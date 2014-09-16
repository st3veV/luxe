
[![Logo](../../images/logo.png)](../../api/index.html)

---



<h1>Parcel</h1>
<small>`luxe.Parcel`</small>



---

`class`extends <code><span>luxe.resource.ResourceManager</span></code>
<span class="meta">
<br/>meta: @:keep
</span>


---


&nbsp;
&nbsp;






<h3>Members</h3> <hr/><span class="member apipage">
                <a name="current_count"><a class="lift" href="#current_count">current\_count</a></a><div class="clear"></div>
                <code class="signature apipage">current\_count : [Int](#)</code><br/></span>
            <span class="small_desc_flat"></span><span class="member apipage">
                <a name="options"><a class="lift" href="#options">options</a></a><div class="clear"></div>
                <code class="signature apipage">options : [luxe.options.ParcelOptions](#)</code><br/></span>
            <span class="small_desc_flat"></span><span class="member apipage">
                <a name="time_to_load"><a class="lift" href="#time_to_load">time\_to\_load</a></a><div class="clear"></div>
                <code class="signature apipage">time\_to\_load : [Float](#)</code><br/></span>
            <span class="small_desc_flat"></span><span class="member apipage">
                <a name="total_items"><a class="lift" href="#total_items">total\_items</a></a><div class="clear"></div>
                <code class="signature apipage">total\_items : [Int](#)</code><br/></span>
            <span class="small_desc_flat"></span>





<h3>Methods</h3> <hr/><span class="method apipage">
            <a name="add_data"><a class="lift" href="#add_data">add\_data</a></a><div class="clear"></div>
            <code class="signature apipage">add\_data(\_id:[String](#)<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_datas"><a class="lift" href="#add_datas">add\_datas</a></a><div class="clear"></div>
            <code class="signature apipage">add\_datas(list:[Array](#)&lt;[String](#)&gt;<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_font"><a class="lift" href="#add_font">add\_font</a></a><div class="clear"></div>
            <code class="signature apipage">add\_font(\_id:[String](#)<span></span>, \_path:[String](#)<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_fonts"><a class="lift" href="#add_fonts">add\_fonts</a></a><div class="clear"></div>
            <code class="signature apipage">add\_fonts(list:[Array](#)&lt;[luxe._Parcel.FontInfo](#)&gt;<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_shader"><a class="lift" href="#add_shader">add\_shader</a></a><div class="clear"></div>
            <code class="signature apipage">add\_shader(ps\_id:[String](#)<span>=&#x27;default&#x27;</span>, vs\_id:[String](#)<span>=&#x27;default&#x27;</span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_shaders"><a class="lift" href="#add_shaders">add\_shaders</a></a><div class="clear"></div>
            <code class="signature apipage">add\_shaders(list:[Array](#)&lt;[luxe._Parcel.ShaderInfo](#)&gt;<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_sound"><a class="lift" href="#add_sound">add\_sound</a></a><div class="clear"></div>
            <code class="signature apipage">add\_sound(\_id:[String](#)<span></span>, \_name:[String](#)<span></span>, \_is\_stream:[Bool](#)<span>=false</span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_sounds"><a class="lift" href="#add_sounds">add\_sounds</a></a><div class="clear"></div>
            <code class="signature apipage">add\_sounds(list:[Array](#)&lt;[luxe._Parcel.SoundInfo](#)&gt;<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_text"><a class="lift" href="#add_text">add\_text</a></a><div class="clear"></div>
            <code class="signature apipage">add\_text(\_id:[String](#)<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_texts"><a class="lift" href="#add_texts">add\_texts</a></a><div class="clear"></div>
            <code class="signature apipage">add\_texts(list:[Array](#)&lt;[String](#)&gt;<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_texture"><a class="lift" href="#add_texture">add\_texture</a></a><div class="clear"></div>
            <code class="signature apipage">add\_texture(\_id:[String](#)<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="add_textures"><a class="lift" href="#add_textures">add\_textures</a></a><div class="clear"></div>
            <code class="signature apipage">add\_textures(list:[Array](#)&lt;[String](#)&gt;<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="from_json"><a class="lift" href="#from_json">from\_json</a></a><div class="clear"></div>
            <code class="signature apipage">from\_json(\_json\_object:[Dynamic](#)<span></span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="load"><a class="lift" href="#load">load</a></a><div class="clear"></div>
            <code class="signature apipage">load() : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    <span class="method apipage">
            <a name="new"><a class="lift" href="#new">new</a></a><div class="clear"></div>
            <code class="signature apipage">new(\_options:[luxe.options.ParcelOptions](#)<span>=null</span>) : [Void](#)</code><br/><span class="small_desc_flat"></span>
        </span>
    






---

&nbsp;
&nbsp;
&nbsp;
&nbsp;