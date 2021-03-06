      subroutine DMC(iwa)
      common /sixs_ffu/ s(1501),wlinf,wlsup
      real sr(3,1501),wli(3),wls(3)
      real wlinf,wlsup,s
      integer iwa,l,i

c band 1 of DMC - Green (cw=549nm)
      data (sr(1,l),l=1,1501,1) / 104*0.,
     A .0001, .0002, .0007, .0024, .0099, .0468, .1919, .6624,
     A .9182, .9125, .9374, .9343, .9525, .9743, .9292, .9808,
     A .9958, .9798, .9824, .9865, .9900, .9484, .9309, .9487,
     A .9523, .9628, .9797, .9696, .9614, .9909, .9828, .9710,
     A .9648, .9195, .8802, .9522, .9690, .9479, .6471, .1349,
     A .0235, .0059, .0017, .0006, .0002,
     A1352*0./

c band 2 of DMC - Red (cw=678nm)
      data (sr(2,l),l=1,1501,1) / 144*0.,
     A .0002, .0008, .0009, .0014, .0045, .0343, .1223, .2401,
     A .5934, .9545, .9436, .9425, .9131, .9108, .9519, .9808,
     A .9864, .9500, .8981, .8943, .9412, .9810, .9783, .9603,
     A .9482, .9487, .9714, .9974, .9912, .9875, .9864, .8169,
     A .5022, .1646, .0337, .0098, .0038, .0018, .0007, .0003,
     A .0001,
     A1316*0./

c band 3 of DMC - NIR (cw=802nm)
      data (sr(3,l),l=1,1501,1) / 201*0.,
     A .0001, .0002, .0004, .0009, .0021, .0058, .0187, .0537,
     A .1421, .3488, .7254, .9408, .9445, .9619, .9883, .9891,
     A .9613, .9296, .9406, .9802, .9989, .9803, .9740, .9873,
     A .9857, .9596, .9475, .9653, .9905, .9855, .9626, .9559,
     A .9712, .9816, .9725, .9678, .9766, .9853, .9797, .9673,
     A .9717, .9890, .9963, .9858, .9735, .9725, .9766, .9765,
     A .9756, .9800, .9870, .9885, .9877, .9886, .9787, .9448,
     A .8845, .7482, .4614, .2025, .0831, .0351, .0165, .0081,
     A .0042, .0023, .0013, .0007, .0004, .0002, .0001,
     A1229*0./

c lower and upper wavelength
      wli(1)=0.5100
      wls(1)=0.6200
      wli(2)=0.6100
      wls(2)=0.7100
      wli(3)=0.7525
      wls(3)=0.9275


      do 1 i=1,1501
      s(i)=sr(iwa,i)
    1 continue
      wlinf=wli(iwa)
      wlsup=wls(iwa)
      return
      end
