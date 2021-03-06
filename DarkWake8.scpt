FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

On certain mac computers, Wake On LAN does not completely wake up the mac :
the screen stays off, and the computer goes back to sleep after 30 seconds.
And in most cases, it doesn't let the user take remote control. 

It happens that the boot parameter "darkwake" can correct this issue when set to the value 8.

Before El Capitan, you simply add the modify the following file: /Library/Preferences/SystemConfiguration/com.apple.Boot.plist
And replace : <dict><key>Kernel Flags</key><string></string></dict>
By this :     <dict><key>Kernel Flags</key><string>darkwake=8</string></dict>

Since El Capitan, the security system doesn't let you to modify this file. 
You can (temporarily) disable the security system and directly modify the file, or you can use this script.

Simply execute the script: if the darkwake mode is not already set at 8, it will set it and ask if you want to restart the mac to take it into account immediately. 

The parameter will be inscripted in the NVRAM, and will stay until the NVRAM is flushed (in case of a big update for example).
You can run this script at startup so if will always check you are correctly configured: go to System Preferences > Users & Groups > Login Items > + > Select this script

     � 	 		� 
 
 O n   c e r t a i n   m a c   c o m p u t e r s ,   W a k e   O n   L A N   d o e s   n o t   c o m p l e t e l y   w a k e   u p   t h e   m a c   : 
 t h e   s c r e e n   s t a y s   o f f ,   a n d   t h e   c o m p u t e r   g o e s   b a c k   t o   s l e e p   a f t e r   3 0   s e c o n d s . 
 A n d   i n   m o s t   c a s e s ,   i t   d o e s n ' t   l e t   t h e   u s e r   t a k e   r e m o t e   c o n t r o l .   
 
 I t   h a p p e n s   t h a t   t h e   b o o t   p a r a m e t e r   " d a r k w a k e "   c a n   c o r r e c t   t h i s   i s s u e   w h e n   s e t   t o   t h e   v a l u e   8 . 
 
 B e f o r e   E l   C a p i t a n ,   y o u   s i m p l y   a d d   t h e   m o d i f y   t h e   f o l l o w i n g   f i l e :   / L i b r a r y / P r e f e r e n c e s / S y s t e m C o n f i g u r a t i o n / c o m . a p p l e . B o o t . p l i s t 
 A n d   r e p l a c e   :   < d i c t > < k e y > K e r n e l   F l a g s < / k e y > < s t r i n g > < / s t r i n g > < / d i c t > 
 B y   t h i s   :           < d i c t > < k e y > K e r n e l   F l a g s < / k e y > < s t r i n g > d a r k w a k e = 8 < / s t r i n g > < / d i c t > 
 
 S i n c e   E l   C a p i t a n ,   t h e   s e c u r i t y   s y s t e m   d o e s n ' t   l e t   y o u   t o   m o d i f y   t h i s   f i l e .   
 Y o u   c a n   ( t e m p o r a r i l y )   d i s a b l e   t h e   s e c u r i t y   s y s t e m   a n d   d i r e c t l y   m o d i f y   t h e   f i l e ,   o r   y o u   c a n   u s e   t h i s   s c r i p t . 
 
 S i m p l y   e x e c u t e   t h e   s c r i p t :   i f   t h e   d a r k w a k e   m o d e   i s   n o t   a l r e a d y   s e t   a t   8 ,   i t   w i l l   s e t   i t   a n d   a s k   i f   y o u   w a n t   t o   r e s t a r t   t h e   m a c   t o   t a k e   i t   i n t o   a c c o u n t   i m m e d i a t e l y .   
 
 T h e   p a r a m e t e r   w i l l   b e   i n s c r i p t e d   i n   t h e   N V R A M ,   a n d   w i l l   s t a y   u n t i l   t h e   N V R A M   i s   f l u s h e d   ( i n   c a s e   o f   a   b i g   u p d a t e   f o r   e x a m p l e ) . 
 Y o u   c a n   r u n   t h i s   s c r i p t   a t   s t a r t u p   s o   i f   w i l l   a l w a y s   c h e c k   y o u   a r e   c o r r e c t l y   c o n f i g u r e d :   g o   t o   S y s t e m   P r e f e r e n c e s   >   U s e r s   &   G r o u p s   >   L o g i n   I t e m s   >   +   >   S e l e c t   t h i s   s c r i p t 
  
   
  
 l     ��������  ��  ��        l     ��  ��    6 0 We get the current value of the nvram boot-args     �   `   W e   g e t   t h e   c u r r e n t   v a l u e   o f   t h e   n v r a m   b o o t - a r g s      l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    n v r a m   b o o t - a r g s��    o      ���� 0 bootargs  ��  ��        l     ��������  ��  ��        l     ��  ��    . ( If the darkwake is not already set to 8     �   P   I f   t h e   d a r k w a k e   i s   n o t   a l r e a d y   s e t   t o   8    ��   l   n !���� ! Z    n " #���� " >    $ % $ o    	���� 0 bootargs   % m   	 
 & & � ' ' ( b o o t - a r g s 	 d a r k w a k e = 8 # k    j ( (  ) * ) l   ��������  ��  ��   *  + , + l   �� - .��   - ' ! We propose to the user to set it    . � / / B   W e   p r o p o s e   t o   t h e   u s e r   t o   s e t   i t ,  0 1 0 Z    h 2 3���� 2 =     4 5 4 n     6 7 6 1    ��
�� 
bhit 7 l    8���� 8 I   �� 9 :
�� .sysodlogaskr        TEXT 9 m     ; ; � < < j D o   y o u   w a n t   t o   e n a b l e   W a k e - O n - L A N   a f t e r   n e x t   r e s t a r t ? : �� = >
�� 
btns = J     ? ?  @ A @ m     B B � C C  Y e s A  D�� D m     E E � F F  N o��   > �� G H
�� 
dflt G m     I I � J J  N o H �� K��
�� 
appr K m     L L � M M  D a r k W a k e 8��  ��  ��   5 m     N N � O O  Y e s 3 k   # d P P  Q R Q l  # #��������  ��  ��   R  S T S l  # #�� U V��   U ( " We set darkwake to 8 in the NVRAM    V � W W D   W e   s e t   d a r k w a k e   t o   8   i n   t h e   N V R A M T  X Y X I  # .�� Z [
�� .sysoexecTEXT���     TEXT Z m   # & \ \ � ] ] B s u d o   n v r a m   b o o t - a r g s = " d a r k w a k e = 8 " [ �� ^��
�� 
badm ^ m   ) *��
�� boovtrue��   Y  _ ` _ l  / /��������  ��  ��   `  a b a l  / /�� c d��   c ? 9 We then ask the user if he wants to restart the computer    d � e e r   W e   t h e n   a s k   t h e   u s e r   i f   h e   w a n t s   t o   r e s t a r t   t h e   c o m p u t e r b  f g f Z   / b h i���� h =  / M j k j n   / I l m l 1   G I��
�� 
bhit m l  / G n���� n I  / G�� o p
�� .sysodlogaskr        TEXT o m   / 2 q q � r r H D o   y o u   w a n t   t o   r e s t a r t   t h e   c o m p u t e r ? p �� s t
�� 
btns s J   3 ; u u  v w v m   3 6 x x � y y  Y e s w  z�� z m   6 9 { { � | |  N o��   t �� } ~
�� 
dflt } m   < ?   � � �  N o ~ �� ���
�� 
appr � m   @ C � � � � �  D a r k W a k e 8��  ��  ��   k m   I L � � � � �  Y e s i k   P ^ � �  � � � l  P P��������  ��  ��   �  � � � l  P P�� � ���   �   We restart the computer    � � � � 0   W e   r e s t a r t   t h e   c o m p u t e r �  � � � O  P \ � � � I  V [������
�� .fndrrestnull��� ��� null��  ��   � m   P S � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � l  ] ]��������  ��  ��  ��  ��  ��   g  ��� � l  c c��������  ��  ��  ��  ��  ��   1  ��� � l  i i��������  ��  ��  ��  ��  ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     n � �   � �   ����  ��  ��   �   �  ���� & ;�� B E�� I�� L������ N \�� q x {  � � ���
�� .sysoexecTEXT���     TEXT�� 0 bootargs  
�� 
btns
�� 
dflt
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
bhit
�� 
badm
�� .fndrrestnull��� ��� null�� o�j E�O�� a����lv����� �,�  Fa a el Oa �a a lv�a �a � �,a   a  *j UOPY hOPY hOPY h ascr  ��ޭ