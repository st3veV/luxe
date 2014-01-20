package luxe;

import luxe.Vector;
import luxe.Rectangle;
import luxe.Visual;

import phoenix.Resource;
import phoenix.geometry.Geometry;
import phoenix.geometry.QuadGeometry;

import luxe.Visual.VisualOptions;

typedef SpriteOptions = {
  > VisualOptions,
    ?centered : Bool,
    ?uv : Rectangle    
}

class Sprite extends Visual {
    
    @:isVar public var centered     (default,set    )   : Bool = true;    
    @:isVar public var uv           (default,set    )   : Rectangle;
    @:isVar public var flipy        (default,set    )   : Bool = false;
    @:isVar public var flipx        (default,set    )   : Bool = false;

    public var geometry_quad : QuadGeometry; 

    var _options : SpriteOptions;

    public function new( options:SpriteOptions ) {

            //store for late load access
        _options = options;

            //centered
        if(options.centered != null) {
            centered = options.centered;
        }

            //create visual
        super( options );
   

    }

    override function on_geometry_created( options : VisualOptions ) {        

        if(texture != null && texture.loaded) {
            
                //because the default is 0,0,1,1 uv for the quad, we don't want that when
                //textures are padded (like on html5)
            if(_options.uv == null) {

                if(texture.actual_width != texture.width || texture.actual_height != texture.height) {
                    uv = new Rectangle(0,0,texture.width,texture.height);
                }

            } else {
                uv = _options.uv;
            }

                //if texture is render target, flipy
            if(texture.type == ResourceType.render_texture) {
                flipy = true;
            }

        } //texture !null && texture.loaded

            //set the origin and centered once created
        var _c = centered;
            centered = _c;        

    } //on_geometry_created

    override function set_geometry( _g:Geometry ) {
        
        geometry_quad = cast _g;
        return super.set_geometry(_g);

    }

//Helper functions

        //Returns true if a point is inside the default AABB 
        //todo: Improve this to include origins of geom + rotation + scale
    public function point_inside(_p:Vector) : Bool {

        if(pos == null) return false;
        if(size == null) return false;
        if(centered) {
            var hx = size.x / 2;
            var hy = size.y / 2;
            if(_p.x < pos.x-hx) return false;
            if(_p.y < pos.y-hy) return false;
            if(_p.x > pos.x+size.x-hx) return false;
            if(_p.y > pos.y+size.y-hy) return false;
        } else {
            if(_p.x < pos.x) return false;
            if(_p.y < pos.y) return false;
            if(_p.x > pos.x+size.x) return false;
            if(_p.y > pos.y+size.y) return false;
        }

        return true;
    
    } //point_inside

//Properties


//UV / source rect

    private function set_uv(_uv:Rectangle) : Rectangle {

        if(geometry_quad != null) {
            geometry_quad.uv(_uv);
        }

        return uv = _uv;
    } 

//Flipping

    private function set_flipy(_v:Bool) {        

        if(geometry_quad != null) {
            geometry_quad.flipy = _v;
        }

        return flipy = _v;

    } //set_flipy

    private function set_flipx(_v:Bool) {        

        if(geometry_quad != null) {
            geometry_quad.flipx = _v;
        }

        return flipx = _v;

    } //set_flipv

//Size

    private override function set_size( _v:Vector ) : Vector {  

            //resize the mesh vertices themselves, as scale is relative to this size
            //if explicitly set
        if(geometry_quad != null) {

            geometry_quad.resize( new Vector( _v.x, _v.y ) );            
                
                //If the user doesn't specify a custom origin, we try and work with the center
            if(!_has_custom_origin) {
                if(centered) {
                        //half of the new size
                    origin = _v.clone().divideScalar(2);
                }
            }

        } //if geometry != null
        
            //done
        return super.set_size(_v);

    } //set_size

//Centered 

    private function set_centered(_c:Bool) : Bool {

            //centered geometry affects the origin
        if(geometry != null) {
            if(size != null) {
                if(centered) {
                    geometry.origin = new Vector(size.x/2, size.y/2);
                } else {
                    geometry.origin = new Vector();
                }
            } //size != null
        } //geometry != null

        return centered = _c;
    
    } //set_centered


//Serialize

    public override function get_serialize_data() : Dynamic {
        
        var _data : Dynamic = super.get_serialize_data();

        var _extra : Dynamic = {            
            centered    : centered,
        };
        
        if(uv != null)      _extra.uv = uv.serialized;
        if(flipx)           _extra.flipx = true;
        if(flipy)           _extra.flipy = true;

        return _merge_properties(_data, _extra);

    } //get_serialize_data

} //Sprite

