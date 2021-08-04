GDPC                                                                                  res://icon.png  �!      �      G1?��z�c��vN��   res://project.binary�.      8      PB_9e�N󻛒Q���,   res://scene/rpc_example_2/Player.gd.remap   P!      5       R��9��J`��w�$   res://scene/rpc_example_2/Player.gdc�      �      �ٵ7�V	�L5���p�(   res://scene/rpc_example_2/Player.tscn   p      �
      �<�"�u��tgu�AT(   res://scene/rpc_example_2/Scene.gd.remap�!      4       ���0Ī(8kV�z#$   res://scene/rpc_example_2/Scene.gdc P      �      ٓ��ي��^u���$   res://scene/rpc_example_2/Scene.tscn�      Z      ^CD�/^�?ya2���            GDSC         '   "     ������������Ķ��   �����϶�   ������������ض��   �������ն���   ������Ŷ   �����������Ķ���   ���¶���   �������Ӷ���   ����������������Ҷ��   ������Ŷ   ����������ڶ   ��¶   ����������Ķ   ��������Ӷ��   ����¶��   ������������ض��   �����������Ķ���   ����������ڶ   ����������Ķ   ������������ض��   �����������Ķ���   ����������ڶ   ����������Ķ   ����������������������¶   ����������������������¶   ����������������������¶          (%s)      custom_colors/font_color      ffee00        ?      ffffff                           
                           	   (   
   9      D      O      P      Q      X      k      |      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "     #     $   	  %     &      '   3YYY0�  PQV�  -YYYD0�  PQV�  W�  �  �  T�  �  PQT�  PQ�  W�  �	  �
  T�  P�  R�  P�  QQ�  W�  �	  �  T�  �  �  W�  �	  �  T�  PQYYYF0�  PQV�  W�  �  �  T�  �  PQT�  PQ�  W�  �	  �  T�  P�  R�  P�  QQ�  W�  �	  �  T�  �  �  W�  �	  �  T�  PQYYYH0�  PQV�  W�  �  �  T�  �  PQT�  PQ�  W�  �	  �  T�  P�  R�  P�  QQ�  W�  �	  �  T�  �  �  W�  �	  �  T�  PQYYY0�  PQV�  W�  �	  �
  T�  P�  R�  P�  QQYYY0�  PQV�  W�  �	  �  T�  P�  R�  P�  QQYYY0�  PQV�  W�  �	  �  T�  P�  R�  P�  QQY`[gd_scene load_steps=2 format=2]

[ext_resource path="res://scene/rpc_example_2/Player.gd" type="Script" id=1]

[node name="Player" type="VBoxContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Id" type="LineEdit" parent="."]
margin_right = 1024.0
margin_bottom = 24.0
size_flags_horizontal = 3
editable = false

[node name="Historic" type="HBoxContainer" parent="."]
margin_top = 28.0
margin_right = 1024.0
margin_bottom = 600.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="Methods" type="VBoxContainer" parent="Historic"]
margin_right = 94.0
margin_bottom = 572.0

[node name="RemoteLabel" type="Label" parent="Historic/Methods"]
margin_right = 94.0
margin_bottom = 188.0
size_flags_horizontal = 3
size_flags_vertical = 3
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "    remote func"

[node name="RemoteTimer" type="Timer" parent="Historic/Methods"]

[node name="MasterLabel" type="Label" parent="Historic/Methods"]
margin_top = 192.0
margin_right = 94.0
margin_bottom = 380.0
size_flags_horizontal = 3
size_flags_vertical = 3
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "    master func"

[node name="MasterTimer" type="Timer" parent="Historic/Methods"]

[node name="PuppetLabel" type="Label" parent="Historic/Methods"]
margin_top = 384.0
margin_right = 94.0
margin_bottom = 572.0
size_flags_horizontal = 3
size_flags_vertical = 3
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "    puppet func"

[node name="PuppetTimer" type="Timer" parent="Historic/Methods"]

[node name="Senders" type="VBoxContainer" parent="Historic"]
margin_left = 98.0
margin_right = 1024.0
margin_bottom = 572.0
size_flags_horizontal = 3

[node name="RemoteSender" type="Label" parent="Historic/Senders"]
margin_right = 926.0
margin_bottom = 188.0
size_flags_horizontal = 3
size_flags_vertical = 3
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "    (null)"

[node name="MasterSender" type="Label" parent="Historic/Senders"]
margin_top = 192.0
margin_right = 926.0
margin_bottom = 380.0
size_flags_horizontal = 3
size_flags_vertical = 3
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "    (null)"

[node name="PuppetSender" type="Label" parent="Historic/Senders"]
margin_top = 384.0
margin_right = 926.0
margin_bottom = 572.0
size_flags_horizontal = 3
size_flags_vertical = 3
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "    (null)"

[connection signal="timeout" from="Historic/Methods/RemoteTimer" to="." method="_on_RemoteTimer_timeout"]
[connection signal="timeout" from="Historic/Methods/MasterTimer" to="." method="_on_MasterTimer_timeout"]
[connection signal="timeout" from="Historic/Methods/PuppetTimer" to="." method="_on_PuppetTimer_timeout"]
    GDSC   #   	   9   F     ������ڶ   �����Ķ�   ���¶���   ���Ķ���   �����������������������¶���   ����   ������Ŷ   �����϶�   �������Ӷ���   ������¶   ���������������ض���   �ƶ�   ���¶���   �涶   ���¶���   ������������Ķ��   ����   ������������¶��   �����������Ķ���   ���������Ҷ�   ��������������������Ҷ��   �Ҷ�   �������Ӷ���   ���Ӷ���   �������Ӷ���   �����������������Ķ�   ����¶��   ��������Ҷ��   �����������������Ҷ�   �Ҷ�   ��ն   �����������������Ҷ�   �����������������Ҷ�   ƶ��   ����������������Ķ��   %   res://scene/rpc_example_2/Player.tscn      �        network_peer_connected     
   _add_child        Id        remote_button         master_button                   puppet_button                                                    !   	   "   
   #      )      6      7      8      >      H      I      T      ]      ^      f      i      q      s      t      u      ~      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0   	  1     2     3     4   #  5   3  6   4  7   :  8   D  9   3YY:�  ?PQYY;�  �  Y;�  �  T�  PQYY;�  NOYYY0�  PQV�  �  PQT�	  P�  RR�  QYYY0�
  PQV�  ;�  W�  �  T�  �  �  &�  T�  P�  Q�  V�  �  T�  P�  R�  Q�  �  �  PQT�  �  �  �  P�  �  PQT�  PQ�  QYYY0�  P�  V�  QV�  �  L�  M�  T�  PQ�  �  L�  MT�  �>  P�  Q�  �  L�  MT�  P�  QT�  �>  P�  Q�  �  L�  MT�  P�  Q�  W�  T�  P�  L�  MQYYY0�  PQV�  ;�  �  PW�  �  T�  Q�  �  &�  �  V�  �  L�  MT�  P�  QYYY0�  PQV�  ;�  �  PW�  �  T�  Q�  �  &�  �  V�  �  L�  MT�  P�  QYYY0�   PQV�  ;�  �  PW�  �  T�  Q�  �  )�!  �  V�  �?  P�!  R�  R�  L�!  MT�"  PQQ�  �  &�  �  V�  �  L�  MT�  P�  QY`      [gd_scene load_steps=2 format=2]

[ext_resource path="res://scene/rpc_example_2/Scene.gd" type="Script" id=1]

[node name="Scene" type="HBoxContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Left" type="VBoxContainer" parent="."]
margin_right = 63.0
margin_bottom = 600.0

[node name="Id" type="LineEdit" parent="Left"]
margin_right = 63.0
margin_bottom = 24.0
caret_blink = true
caret_blink_speed = 0.5

[node name="Remote" type="Button" parent="Left"]
margin_top = 28.0
margin_right = 63.0
margin_bottom = 48.0
text = "remote"

[node name="Master" type="Button" parent="Left"]
margin_top = 52.0
margin_right = 63.0
margin_bottom = 72.0
text = "master"

[node name="Puppet" type="Button" parent="Left"]
margin_top = 76.0
margin_right = 63.0
margin_bottom = 96.0
text = "puppet"

[node name="IP" type="LineEdit" parent="Left"]
margin_top = 552.0
margin_right = 63.0
margin_bottom = 576.0
size_flags_vertical = 10

[node name="Connect" type="Button" parent="Left"]
margin_top = 580.0
margin_right = 63.0
margin_bottom = 600.0
text = "connect"

[node name="Right" type="VBoxContainer" parent="."]
margin_left = 545.0
margin_right = 545.0
margin_bottom = 600.0
size_flags_horizontal = 6
size_flags_vertical = 3

[connection signal="pressed" from="Left/Remote" to="." method="_on_Remote_pressed"]
[connection signal="pressed" from="Left/Master" to="." method="_on_Master_pressed"]
[connection signal="pressed" from="Left/Puppet" to="." method="_on_Puppet_pressed"]
[connection signal="pressed" from="Left/Connect" to="." method="_make_connection"]
      [remap]

path="res://scene/rpc_example_2/Player.gdc"
           [remap]

path="res://scene/rpc_example_2/Scene.gdc"
            �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      _global_script_classes             _global_script_class_icons             application/config/name         Internet   application/run/main_scene,      $   res://scene/rpc_example_2/Scene.tscn   application/config/icon         res://icon.png     input/move_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/move_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/move_down`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/move_up`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script      )   rendering/environment/default_environment          res://default_env.tres          