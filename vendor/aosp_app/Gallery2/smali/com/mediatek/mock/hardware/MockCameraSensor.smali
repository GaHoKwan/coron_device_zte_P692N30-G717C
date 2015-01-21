.class public Lcom/mediatek/mock/hardware/MockCameraSensor;
.super Ljava/lang/Object;
.source "MockCameraSensor.java"


# static fields
.field private static final BACKPARA:Ljava/lang/String; = "ae-mode=1;ae-mode-values=1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19,20,21,22;af-draw=0;af-x=0;af-y=0;afeng-mode=0;afeng-pos=0;antibanding=auto;antibanding-values=60hz,50hz,auto,off;auto-exposure-lock-supported=true;auto-whitebalance-lock-supported=true;awb-2pass=on;awb-2pass-values=off,on;brightness=middle;brightness-values=low,middle,high;burst-num=1;mtk-cam-mode=0;cap-mode=normal;cap-mode-values=normal,continuousshot,smileshot,bestshot,evbracketshot,mav,hdr,autorama,asd,pano_3d,single_3d,face_beauty;capfname=/sdcard/DCIM/cap00;contrast=middle;contrast-values=low,middle,high;edge=middle;edge-values=low,middle,high;effect=none;effect-values=none,mono,sepia,negative,aqua,blackboard,whiteboard;exposure=0;exposure-compensation=0;exposure-compensation-step=1.0;exposure-meter=center;exposure-meter-values=center,spot,average;exposure-values=0,1,2,3,-1,-2,-3;fast-continuous-shot=off;fast-continuous-shot-values=off,on;focal-length=3.5;focus-distances=0.95,1.9,Infinity;focus-meter=spot;focus-meter-values=spot,multi;focus-mode=auto;focus-mode-values=auto,continuous-picture,continuous-video,macro,infinity,manual,fullscan;horizontal-view-angle=360;hue=middle;hue-values=low,middle,high;iso-speed=auto;iso-speed-eng=0;iso-speed-values=auto,100,200,400,800,1600;isp-mode=0;jpeg-quality=85;jpeg-thumbnail-height=120;jpeg-thumbnail-quality=85;jpeg-thumbnail-size-values=0x0,160x120,320x240;jpeg-thumbnail-width=160;max-exposure-compensation=3;max-num-detected-faces-hw=15;max-num-detected-faces-sw=0;max-num-focus-areas=1;max-num-metering-areas=1;max-zoom=10;min-exposure-compensation=-3;pano-dir=right;pano-idx=0;picture-format=jpeg;picture-format-values=jpeg;picture-size=2560x1920;picture-size-values=640x480,1280x768,1280x960,1600x1200,2048x1536,2560x1712,2560x1920;preview-format=yuv420sp;preview-format-values=yuv420sp,yuv420p,yuv420i-yyuvyy-3plane;preview-fps-range=5000,30000;preview-fps-range-values=(5000,30000);preview-frame-rate=30;preview-frame-rate-values=15,24,30;preview-size=640x480;preview-size-values=176x144,320x240,352x288,432x320,480x320,480x368,640x480,720x480,728x480,782x480,800x480,854x480,800x600,864x480,888x540,960x540,1280x720,1920x1088;prv-int-fmt=yuv420i-yyuvyy-3plane;rawfname=/sdcard/DCIM/raw00.raw;rawsave-mode=0;rotation=0;saturation=middle;saturation-values=low,middle,high;scene-mode=auto;scene-mode-values=auto,portrait,landscape,night,night-portrait,theatre,beach,snow,sunset,steadyphoto,fireworks,sports,party,candlelight;smooth-zoom-supported=false;stereo3d-image-format=jps;stereo3d-image-format-values=jps,mpo;stereo3d-mode=off;stereo3d-mode-values=off,on;stereo3d-picture-size=2560x720;stereo3d-picture-size-values=2560x720;stereo3d-preview-size=640x360;stereo3d-preview-size-values=640x360,854x480,960x540,1280x720;stereo3d-type=off;stereo3d-type-values=off;tv-delay=240;vertical-view-angle=360;video-stabilization=false;video-stabilization-supported=true;video-stabilization-values=false,true;whitebalance=auto;whitebalance-values=auto,daylight,cloudy-daylight,shade,twilight,fluorescent,warm-fluorescent,incandescent;zoom=0;zoom-ratios=100,114,132,151,174,200,229,263,303,348,400;zoom-supported=true;zsd-mode=on;zsd-mode-values=off,on;zsd-supported=true"

.field private static final CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo; = null

.field private static final FRONTPARA:Ljava/lang/String; = "ae-mode=1;ae-mode-values=1;af-draw=0;af-x=0;af-y=0;afeng-mode=0;afeng-pos=0;aflamp-mode=off;aflamp-mode-values=off;antibanding=50hz;antibanding-values=60hz,50hz;auto-exposure-lock=false;auto-exposure-lock-supported=true;auto-whitebalance-lock=false;auto-whitebalance-lock-supported=true;awb-2pass=on;awb-2pass-values=off,on;burst-num=1;mtk-cam-mode=0;cap-mode=normal;cap-mode-values=normal;capfname=/sdcard/DCIM/cap00;effect=none;effect-values=none,mono,sepia,negative,sepiagreen,sepiablue;exposure=0;exposure-compensation=0;exposure-compensation-step=1.0;exposure-values=0,0.3,0.7,1,1.3,-0.3,-0.7,-1,-1.3;fast-continuous-shot=off;fast-continuous-shot-values=off,on;focal-length=3.5;focus-distances=0.95,1.9,Infinity;focus-mode=infinity;focus-mode-values=infinity;horizontal-view-angle=360;iso-speed=auto;iso-speed-eng=0;iso-speed-values=auto;isp-mode=0;jpeg-quality=85;jpeg-thumbnail-height=120;jpeg-thumbnail-quality=85;jpeg-thumbnail-size-values=0x0,160x120,320x240;jpeg-thumbnail-width=160;max-exposure-compensation=1;max-num-detected-faces-hw=15;max-num-detected-faces-sw=0;max-num-focus-areas=0;max-num-metering-areas=0;max-zoom=10;min-exposure-compensation=-1;pano-dir=right;pano-idx=0;picture-format=jpeg;picture-format-values=jpeg;picture-size=640x480;picture-size-values=320x240,640x480,640x384,1440x960;preview-format=yuv420sp;preview-format-values=yuv420sp,yuv420p,yuv420i-yyuvyy-3plane;preview-fps-range=5000,30000;preview-fps-range-values=(5000,30000);preview-frame-rate=20;preview-frame-rate-values=10,20;preview-size=640x480;preview-size-values=176x144,320x240,352x288,432x320,480x320,640x480,640x384,728x480,782x480,888x540;prv-int-fmt=yuv420i-yyuvyy-3plane;rawfname=/sdcard/DCIM/raw00.raw;rawsave-mode=0;recording-hint=false;rotation=0;scene-mode=auto;scene-mode-values=auto,night;smooth-zoom-supported=false;stereo3d-type=off;stereo3d-type-values=off;tv-delay=240;vertical-view-angle=360;video-stabilization=false;video-stabilization-supported=false;video-stabilization-values=false;whitebalance=auto;whitebalance-values=auto,daylight,cloudy-daylight,fluorescent,incandescent,tungsten;zoom=0;zoom-ratios=100,114,132,151,174,200,229,263,303,348,400;zoom-supported=true;zsd-mode=off;zsd-mode-values=off,off;zsd-supported=false"

.field private static final TAG:Ljava/lang/String; = "MockCameraSensor"


# instance fields
.field private mBuff:[B

.field private mId:I

.field private final mSensorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x5a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/Camera$CameraInfo;

    sput-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    .line 68
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v1, v0, v2

    .line 69
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v2

    iput v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 70
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v2

    iput v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 71
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v1, v0, v3

    .line 72
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v3

    iput v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 73
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v3

    iput v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "MockCameraSensor"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput p1, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    .line 83
    iget v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "UnKnown"

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mSensorType:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    if-nez v0, :cond_1

    .line 88
    const-string v0, "OVxxxx"

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mSensorType:Ljava/lang/String;

    .line 92
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/MockCameraSensor;->init()V

    .line 93
    return-void

    .line 90
    :cond_1
    const-string v0, "...xxx"

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mSensorType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 1
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 112
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, p0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 113
    sget-object v0, Lcom/mediatek/mock/hardware/MockCameraSensor;->CAMERA_INFO:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, p0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 114
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mBuff:[B

    .line 97
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public defaultParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    const-string v0, "MockCameraSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get default Parameters, mId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    if-nez v0, :cond_0

    .line 119
    const-string v0, "ae-mode=1;ae-mode-values=1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,19,20,21,22;af-draw=0;af-x=0;af-y=0;afeng-mode=0;afeng-pos=0;antibanding=auto;antibanding-values=60hz,50hz,auto,off;auto-exposure-lock-supported=true;auto-whitebalance-lock-supported=true;awb-2pass=on;awb-2pass-values=off,on;brightness=middle;brightness-values=low,middle,high;burst-num=1;mtk-cam-mode=0;cap-mode=normal;cap-mode-values=normal,continuousshot,smileshot,bestshot,evbracketshot,mav,hdr,autorama,asd,pano_3d,single_3d,face_beauty;capfname=/sdcard/DCIM/cap00;contrast=middle;contrast-values=low,middle,high;edge=middle;edge-values=low,middle,high;effect=none;effect-values=none,mono,sepia,negative,aqua,blackboard,whiteboard;exposure=0;exposure-compensation=0;exposure-compensation-step=1.0;exposure-meter=center;exposure-meter-values=center,spot,average;exposure-values=0,1,2,3,-1,-2,-3;fast-continuous-shot=off;fast-continuous-shot-values=off,on;focal-length=3.5;focus-distances=0.95,1.9,Infinity;focus-meter=spot;focus-meter-values=spot,multi;focus-mode=auto;focus-mode-values=auto,continuous-picture,continuous-video,macro,infinity,manual,fullscan;horizontal-view-angle=360;hue=middle;hue-values=low,middle,high;iso-speed=auto;iso-speed-eng=0;iso-speed-values=auto,100,200,400,800,1600;isp-mode=0;jpeg-quality=85;jpeg-thumbnail-height=120;jpeg-thumbnail-quality=85;jpeg-thumbnail-size-values=0x0,160x120,320x240;jpeg-thumbnail-width=160;max-exposure-compensation=3;max-num-detected-faces-hw=15;max-num-detected-faces-sw=0;max-num-focus-areas=1;max-num-metering-areas=1;max-zoom=10;min-exposure-compensation=-3;pano-dir=right;pano-idx=0;picture-format=jpeg;picture-format-values=jpeg;picture-size=2560x1920;picture-size-values=640x480,1280x768,1280x960,1600x1200,2048x1536,2560x1712,2560x1920;preview-format=yuv420sp;preview-format-values=yuv420sp,yuv420p,yuv420i-yyuvyy-3plane;preview-fps-range=5000,30000;preview-fps-range-values=(5000,30000);preview-frame-rate=30;preview-frame-rate-values=15,24,30;preview-size=640x480;preview-size-values=176x144,320x240,352x288,432x320,480x320,480x368,640x480,720x480,728x480,782x480,800x480,854x480,800x600,864x480,888x540,960x540,1280x720,1920x1088;prv-int-fmt=yuv420i-yyuvyy-3plane;rawfname=/sdcard/DCIM/raw00.raw;rawsave-mode=0;rotation=0;saturation=middle;saturation-values=low,middle,high;scene-mode=auto;scene-mode-values=auto,portrait,landscape,night,night-portrait,theatre,beach,snow,sunset,steadyphoto,fireworks,sports,party,candlelight;smooth-zoom-supported=false;stereo3d-image-format=jps;stereo3d-image-format-values=jps,mpo;stereo3d-mode=off;stereo3d-mode-values=off,on;stereo3d-picture-size=2560x720;stereo3d-picture-size-values=2560x720;stereo3d-preview-size=640x360;stereo3d-preview-size-values=640x360,854x480,960x540,1280x720;stereo3d-type=off;stereo3d-type-values=off;tv-delay=240;vertical-view-angle=360;video-stabilization=false;video-stabilization-supported=true;video-stabilization-values=false,true;whitebalance=auto;whitebalance-values=auto,daylight,cloudy-daylight,shade,twilight,fluorescent,warm-fluorescent,incandescent;zoom=0;zoom-ratios=100,114,132,151,174,200,229,263,303,348,400;zoom-supported=true;zsd-mode=on;zsd-mode-values=off,on;zsd-supported=true"

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ae-mode=1;ae-mode-values=1;af-draw=0;af-x=0;af-y=0;afeng-mode=0;afeng-pos=0;aflamp-mode=off;aflamp-mode-values=off;antibanding=50hz;antibanding-values=60hz,50hz;auto-exposure-lock=false;auto-exposure-lock-supported=true;auto-whitebalance-lock=false;auto-whitebalance-lock-supported=true;awb-2pass=on;awb-2pass-values=off,on;burst-num=1;mtk-cam-mode=0;cap-mode=normal;cap-mode-values=normal;capfname=/sdcard/DCIM/cap00;effect=none;effect-values=none,mono,sepia,negative,sepiagreen,sepiablue;exposure=0;exposure-compensation=0;exposure-compensation-step=1.0;exposure-values=0,0.3,0.7,1,1.3,-0.3,-0.7,-1,-1.3;fast-continuous-shot=off;fast-continuous-shot-values=off,on;focal-length=3.5;focus-distances=0.95,1.9,Infinity;focus-mode=infinity;focus-mode-values=infinity;horizontal-view-angle=360;iso-speed=auto;iso-speed-eng=0;iso-speed-values=auto;isp-mode=0;jpeg-quality=85;jpeg-thumbnail-height=120;jpeg-thumbnail-quality=85;jpeg-thumbnail-size-values=0x0,160x120,320x240;jpeg-thumbnail-width=160;max-exposure-compensation=1;max-num-detected-faces-hw=15;max-num-detected-faces-sw=0;max-num-focus-areas=0;max-num-metering-areas=0;max-zoom=10;min-exposure-compensation=-1;pano-dir=right;pano-idx=0;picture-format=jpeg;picture-format-values=jpeg;picture-size=640x480;picture-size-values=320x240,640x480,640x384,1440x960;preview-format=yuv420sp;preview-format-values=yuv420sp,yuv420p,yuv420i-yyuvyy-3plane;preview-fps-range=5000,30000;preview-fps-range-values=(5000,30000);preview-frame-rate=20;preview-frame-rate-values=10,20;preview-size=640x480;preview-size-values=176x144,320x240,352x288,432x320,480x320,640x480,640x384,728x480,782x480,888x540;prv-int-fmt=yuv420i-yyuvyy-3plane;rawfname=/sdcard/DCIM/raw00.raw;rawsave-mode=0;recording-hint=false;rotation=0;scene-mode=auto;scene-mode-values=auto,night;smooth-zoom-supported=false;stereo3d-type=off;stereo3d-type-values=off;tv-delay=240;vertical-view-angle=360;video-stabilization=false;video-stabilization-supported=false;video-stabilization-values=false;whitebalance=auto;whitebalance-values=auto,daylight,cloudy-daylight,fluorescent,incandescent,tungsten;zoom=0;zoom-ratios=100,114,132,151,174,200,229,263,303,348,400;zoom-supported=true;zsd-mode=off;zsd-mode-values=off,off;zsd-supported=false"

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mId:I

    return v0
.end method

.method public getSensorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mSensorType:Ljava/lang/String;

    return-object v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public requestBuff()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/mock/hardware/MockCameraSensor;->mBuff:[B

    return-object v0
.end method
