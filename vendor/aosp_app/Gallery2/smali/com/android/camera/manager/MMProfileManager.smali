.class public Lcom/android/camera/manager/MMProfileManager;
.super Ljava/lang/Object;
.source "MMProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final EVENT_ANIMATE_CAPTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_ANIMATE_SWITCH_CAMERA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_APPLY_PARAMETERS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_APPLY_PARAM_UI_IMMEDIAT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_AUTO_FOCUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ACTIVITY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ACTIVITY_DETAIL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_EXIT_BY_BACK_KEY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_GALLERY_BACK_KEY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_HANDLE_MSG:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_HARDWARE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ON_CONFIG_CHANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ON_CREATE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ON_DESTROY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ON_ORIENT_CHANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ON_PAUSE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ON_RESUME:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_OPEN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_PARAMETER_COPY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_PREVIEW_PRE_READY_BLOCK:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_PREVIEW_PRE_READY_OPEN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_RELEASE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_ROOT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_SCREEN_NAIL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_SEND_MSG:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_START_UP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CAMERA_VIEW_OPERATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_CONTINUE_AUTO_FOCUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_DRAW_SCREEN_NAIL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_FIRST_FRAME_AVAILABLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_FOCUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_FRAME_AVAILABLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_GET_PARAMETERS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_INIT_CAMERA_PREF:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_INIT_FOCUS_MGR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_INIT_OPEN_PROCESS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_LAYOUT_CHANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_NOTIFY_ORIENT_CHANGED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_NOTIFY_SERVER_SELF_CHANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_ACTOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_APPLY_PARAMETER_FOR_CAPTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_DATA_GRIP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_SHOT2SHOT_ANIMATE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_SHUTTER_CLICK:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_SHUTTER_FOCUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_STORE_PICTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PHOTO_TAKE_PICTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_REQUEST_RENDER:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_RE_INFLATE_VIEW_MGR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SETTING_CHECKER:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SET_DISP_ORIENT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SET_PARAMETERS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SET_PREVIEW_ASPECT_RATIO:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SET_PREVIEW_TEXT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_START_PREVIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_STOP_PREVIEW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SUPER_DRAW_NO_ANIMATE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SUPER_DRAW_ORIGIN_FRAME:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SUPER_DRAW_SIZE_CHANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_SWITCH_CAMERA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_UPDATE_SURFACE_TEXTURE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_ACTOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_EFFECTRECORDER_START:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_INIT_MEDIARECORDER:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_MEDIARECORDER_START:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_SHUTTER_CLICK:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_SHUTTER_FOCUS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_START_RECORD:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_STOP_RECORD:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_STORE_VIDEO:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EVENT_VIDEO_UPDATE_RECORDING_TIME:I = 0x0

.field private static final NAME_ANIMATE_CAPTURE:Ljava/lang/String; = "AnimateCapture"

.field private static final NAME_ANIMATE_SWITCH_CAMERA:Ljava/lang/String; = "AnimateSwitchCamera"

.field private static final NAME_APPLY_PARAMETERS:Ljava/lang/String; = "ApplyParameters"

.field private static final NAME_APPLY_PARAM_UI_IMMEDIAT:Ljava/lang/String; = "ApplyParametersToUiImmediately"

.field private static final NAME_AUTO_FOCUS:Ljava/lang/String; = "AutoFocus"

.field private static final NAME_CAMERA_ACTIVITY:Ljava/lang/String; = "CameraActivity"

.field private static final NAME_CAMERA_ACTIVITY_DETAIL:Ljava/lang/String; = "CameraActivityDetail"

.field private static final NAME_CAMERA_EXIT_BY_BACK_KEY:Ljava/lang/String; = "CameraExitByBackKey"

.field private static final NAME_CAMERA_GALLERY_BACK_KEY:Ljava/lang/String; = "CameraGalleryBackKey"

.field private static final NAME_CAMERA_HANDLE_MSG:Ljava/lang/String; = "handleMessage"

.field private static final NAME_CAMERA_HARDWARE:Ljava/lang/String; = "CameraHardWare"

.field private static final NAME_CAMERA_ON_CONFIG_CHANGE:Ljava/lang/String; = "OnConfigChange"

.field private static final NAME_CAMERA_ON_CREATE:Ljava/lang/String; = "CameraOnCreate"

.field private static final NAME_CAMERA_ON_DESTROY:Ljava/lang/String; = "CameraOnDestroy"

.field private static final NAME_CAMERA_ON_ORIENT_CHANGE:Ljava/lang/String; = "OnOrientChange"

.field private static final NAME_CAMERA_ON_PAUSE:Ljava/lang/String; = "CameraOnPause"

.field private static final NAME_CAMERA_ON_RESUME:Ljava/lang/String; = "CameraOnResume"

.field private static final NAME_CAMERA_OPEN:Ljava/lang/String; = "Open"

.field private static final NAME_CAMERA_PARAMETER_COPY:Ljava/lang/String; = "CameraParameterCopy"

.field private static final NAME_CAMERA_PREVIEW_PRE_READY_BLOCK:Ljava/lang/String; = "CameraPreviewPreReadyBlock"

.field private static final NAME_CAMERA_PREVIEW_PRE_READY_OPEN:Ljava/lang/String; = "CameraPreviewPreReadyOpen"

.field private static final NAME_CAMERA_RELEASE:Ljava/lang/String; = "Release"

.field private static final NAME_CAMERA_ROOT:Ljava/lang/String; = "CameraApp"

.field private static final NAME_CAMERA_SCREEN_NAIL:Ljava/lang/String; = "CameraScreenNail"

.field private static final NAME_CAMERA_SEND_MSG:Ljava/lang/String; = "sendMessage"

.field private static final NAME_CAMERA_START_PREVIEW:Ljava/lang/String; = "StartPreview"

.field private static final NAME_CAMERA_START_UP:Ljava/lang/String; = "CameraStartUp"

.field private static final NAME_CAMERA_STOP_PREVIEW:Ljava/lang/String; = "StopPreview"

.field private static final NAME_CAMERA_VIEW_OPERATION:Ljava/lang/String; = "CameraViewOperation"

.field private static final NAME_CONTINUE_AUTO_FOCUS:Ljava/lang/String; = "ContinueAutoFocus"

.field private static final NAME_DRAW_SCREEN_NAIL:Ljava/lang/String; = "DrawScreenNail"

.field private static final NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String; = "FirstFrameAvailable"

.field private static final NAME_FOCUS:Ljava/lang/String; = "AutoAndContinueFocus"

.field private static final NAME_FRAME_AVAILABLE:Ljava/lang/String; = "FrameAvailable"

.field private static final NAME_GET_PARAMETERS:Ljava/lang/String; = "getParameters"

.field private static final NAME_INIT_CAMERA_PREF:Ljava/lang/String; = "InitCameraPref"

.field private static final NAME_INIT_FOCUS_MGR:Ljava/lang/String; = "InitFocusManager"

.field private static final NAME_INIT_OPEN_PROCESS:Ljava/lang/String; = "InitForOpeningProcess"

.field private static final NAME_LAYOUT_CHANGE:Ljava/lang/String; = "onLayoutChange"

.field private static final NAME_NOTIFY_ORIENT_CHANGED:Ljava/lang/String; = "NotifyOrientChanged"

.field private static final NAME_NOTIFY_SERVER_SELF_CHANGE:Ljava/lang/String; = "NotifyServerSelfChange"

.field private static final NAME_PHOTO_ACTOR:Ljava/lang/String; = "PhotoActor"

.field private static final NAME_PHOTO_APPLY_PARAMETER_FOR_CAPTURE:Ljava/lang/String; = "applyParameterForCapture"

.field private static final NAME_PHOTO_DATA_GRIP:Ljava/lang/String; = "PictureDataGrip"

.field private static final NAME_PHOTO_SHOT2SHOT_ANIMATE:Ljava/lang/String; = "Shot2ShotAnimate"

.field private static final NAME_PHOTO_SHUTTER_CLICK:Ljava/lang/String; = "ClickPhotoShutter"

.field private static final NAME_PHOTO_SHUTTER_FOCUS:Ljava/lang/String; = "FocusPhotoShutter"

.field private static final NAME_PHOTO_STORE_PICTURE:Ljava/lang/String; = "StorePicture"

.field private static final NAME_PHOTO_TAKE_PICTURE:Ljava/lang/String; = "TakePicture"

.field private static final NAME_REQUEST_RENDER:Ljava/lang/String; = "RequestRender"

.field private static final NAME_RE_INFLATE_VIEW_MGR:Ljava/lang/String; = "ReInflateViewManager"

.field private static final NAME_SETTING_CHECKER:Ljava/lang/String; = "SettingChecker"

.field private static final NAME_SET_DISP_ORIENT:Ljava/lang/String; = "SetDispOrient"

.field private static final NAME_SET_PARAMETERS:Ljava/lang/String; = "setParameters"

.field private static final NAME_SET_PREVIEW_ASPECT_RATIO:Ljava/lang/String; = "SetPreviewAspectRatio"

.field private static final NAME_SET_PREVIEW_TEXT:Ljava/lang/String; = "SetPreviewTexture"

.field private static final NAME_SUPER_DRAW_NO_ANIMATE:Ljava/lang/String; = "SuperDrawNoAnimate"

.field private static final NAME_SUPER_DRAW_ORIGIN_FRAME:Ljava/lang/String; = "SuperDrawOriginFrame"

.field private static final NAME_SUPER_DRAW_SIZE_CHANGE:Ljava/lang/String; = "SuperDrawSizeChange"

.field private static final NAME_SWITCH_CAMERA:Ljava/lang/String; = "SwitchCamera"

.field private static final NAME_UPDATE_SURFACE_TEXTURE:Ljava/lang/String; = "UpdateSurfaceTexture"

.field private static final NAME_VIDEO_ACTOR:Ljava/lang/String; = "VideoActor"

.field private static final NAME_VIDEO_EFFECTRECORDER_START:Ljava/lang/String; = "EffectrecorderStart"

.field private static final NAME_VIDEO_INIT_MEDIARECORDER:Ljava/lang/String; = "InitMediarecorder"

.field private static final NAME_VIDEO_MEDIARECORDER_START:Ljava/lang/String; = "MediarecorderStart"

.field private static final NAME_VIDEO_SHUTTER_CLICK:Ljava/lang/String; = "ClickVideoShutter"

.field private static final NAME_VIDEO_SHUTTER_FOCUS:Ljava/lang/String; = "VideoShutterFocus"

.field private static final NAME_VIDEO_START_RECORD:Ljava/lang/String; = "VideoStartRecord"

.field private static final NAME_VIDEO_STOP_RECORD:Ljava/lang/String; = "VideoStopRecord"

.field private static final NAME_VIDEO_STORE_VIDEO:Ljava/lang/String; = "StoreVideo"

.field private static final NAME_VIDEO_UPDATE_RECORDING_TIME:Ljava/lang/String; = "UpdateRecordingTime"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x1

    const-string v1, "CameraApp"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    .line 176
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "CameraHardWare"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    .line 178
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    const-string v1, "Open"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_OPEN:I

    .line 180
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    const-string v1, "StartPreview"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_START_PREVIEW:I

    .line 182
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    const-string v1, "StopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_STOP_PREVIEW:I

    .line 184
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    const-string v1, "Release"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_RELEASE:I

    .line 186
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    const-string v1, "getParameters"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_GET_PARAMETERS:I

    .line 188
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    const-string v1, "setParameters"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PARAMETERS:I

    .line 192
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "PhotoActor"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    .line 194
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "FocusPhotoShutter"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHUTTER_FOCUS:I

    .line 196
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "ClickPhotoShutter"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHUTTER_CLICK:I

    .line 198
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "TakePicture"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_TAKE_PICTURE:I

    .line 200
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "PictureDataGrip"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_DATA_GRIP:I

    .line 202
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "StorePicture"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_STORE_PICTURE:I

    .line 204
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "Shot2ShotAnimate"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHOT2SHOT_ANIMATE:I

    .line 206
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    const-string v1, "applyParameterForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_APPLY_PARAMETER_FOR_CAPTURE:I

    .line 210
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "AutoAndContinueFocus"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FOCUS:I

    .line 212
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FOCUS:I

    const-string v1, "AutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_AUTO_FOCUS:I

    .line 214
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FOCUS:I

    const-string v1, "ContinueAutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CONTINUE_AUTO_FOCUS:I

    .line 218
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "SwitchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SWITCH_CAMERA:I

    .line 222
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "VideoActor"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    .line 224
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "ClickVideoShutter"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_SHUTTER_CLICK:I

    .line 226
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "VideoShutterFocus"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_SHUTTER_FOCUS:I

    .line 228
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "VideoStartRecord"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_START_RECORD:I

    .line 230
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "VideoStopRecord"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STOP_RECORD:I

    .line 232
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "StoreVideo"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STORE_VIDEO:I

    .line 234
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "InitMediarecorder"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_INIT_MEDIARECORDER:I

    .line 236
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "MediarecorderStart"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_MEDIARECORDER_START:I

    .line 238
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "EffectrecorderStart"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_EFFECTRECORDER_START:I

    .line 240
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    const-string v1, "UpdateRecordingTime"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_UPDATE_RECORDING_TIME:I

    .line 244
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "CameraScreenNail"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    .line 246
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "FrameAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FRAME_AVAILABLE:I

    .line 248
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "FirstFrameAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    .line 250
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "RequestRender"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_REQUEST_RENDER:I

    .line 252
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "DrawScreenNail"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_DRAW_SCREEN_NAIL:I

    .line 254
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "NotifyServerSelfChange"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_NOTIFY_SERVER_SELF_CHANGE:I

    .line 256
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "AnimateCapture"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_ANIMATE_CAPTURE:I

    .line 258
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "AnimateSwitchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_ANIMATE_SWITCH_CAMERA:I

    .line 260
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "SuperDrawNoAnimate"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SUPER_DRAW_NO_ANIMATE:I

    .line 262
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "SuperDrawOriginFrame"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SUPER_DRAW_ORIGIN_FRAME:I

    .line 264
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    const-string v1, "SuperDrawSizeChange"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SUPER_DRAW_SIZE_CHANGE:I

    .line 268
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "CameraActivity"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    .line 270
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraOnCreate"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CREATE:I

    .line 272
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraOnResume"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_RESUME:I

    .line 274
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraOnPause"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_PAUSE:I

    .line 276
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraOnDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_DESTROY:I

    .line 278
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraStartUp"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_START_UP:I

    .line 280
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "OnConfigChange"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CONFIG_CHANGE:I

    .line 282
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "OnOrientChange"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_ORIENT_CHANGE:I

    .line 284
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HANDLE_MSG:I

    .line 286
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "sendMessage"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SEND_MSG:I

    .line 288
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraExitByBackKey"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_EXIT_BY_BACK_KEY:I

    .line 290
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraGalleryBackKey"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_GALLERY_BACK_KEY:I

    .line 294
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    const-string v1, "CameraActivityDetail"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    .line 296
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "CameraViewOperation"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_VIEW_OPERATION:I

    .line 298
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "CameraParameterCopy"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PARAMETER_COPY:I

    .line 300
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "CameraPreviewPreReadyBlock"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PREVIEW_PRE_READY_BLOCK:I

    .line 302
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "CameraPreviewPreReadyOpen"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PREVIEW_PRE_READY_OPEN:I

    .line 304
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "InitForOpeningProcess"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_OPEN_PROCESS:I

    .line 306
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "ApplyParameters"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_APPLY_PARAMETERS:I

    .line 308
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "InitCameraPref"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_CAMERA_PREF:I

    .line 310
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "SetDispOrient"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_DISP_ORIENT:I

    .line 312
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "SetPreviewAspectRatio"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PREVIEW_ASPECT_RATIO:I

    .line 314
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "NotifyOrientChanged"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_NOTIFY_ORIENT_CHANGED:I

    .line 316
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "SetPreviewTexture"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PREVIEW_TEXT:I

    .line 318
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "ReInflateViewManager"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_RE_INFLATE_VIEW_MGR:I

    .line 320
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "UpdateSurfaceTexture"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_UPDATE_SURFACE_TEXTURE:I

    .line 322
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "InitFocusManager"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_FOCUS_MGR:I

    .line 324
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY_DETAIL:I

    const-string v1, "onLayoutChange"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_LAYOUT_CHANGE:I

    .line 327
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    const-string v1, "SettingChecker"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SETTING_CHECKER:I

    .line 329
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SETTING_CHECKER:I

    const-string v1, "ApplyParametersToUiImmediately"

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_APPLY_PARAM_UI_IMMEDIAT:I

    .line 332
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    return-void
.end method

.method public static startProfileAnimateCapture()V
    .locals 2

    .prologue
    .line 634
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_ANIMATE_CAPTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 637
    return-void
.end method

.method public static startProfileAnimateSwitchCamera()V
    .locals 2

    .prologue
    .line 647
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_ANIMATE_SWITCH_CAMERA:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 650
    return-void
.end method

.method public static startProfileApplyParameterForCapture()V
    .locals 2

    .prologue
    .line 461
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_APPLY_PARAMETER_FOR_CAPTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 464
    return-void
.end method

.method public static startProfileApplyParameters()V
    .locals 3

    .prologue
    .line 877
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_APPLY_PARAMETERS:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 880
    const-wide/16 v0, 0x8

    const-string v2, "ApplyParameters"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 881
    return-void
.end method

.method public static startProfileApplyParamsToUiImmediately()V
    .locals 2

    .prologue
    .line 985
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_APPLY_PARAM_UI_IMMEDIAT:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 988
    return-void
.end method

.method public static startProfileCameraExitByBackKey()V
    .locals 2

    .prologue
    .line 735
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_EXIT_BY_BACK_KEY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 738
    return-void
.end method

.method public static startProfileCameraGalleryBackKey()V
    .locals 2

    .prologue
    .line 747
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_GALLERY_BACK_KEY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 750
    return-void
.end method

.method public static startProfileCameraOnConfigChange()V
    .locals 2

    .prologue
    .line 773
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CONFIG_CHANGE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 776
    return-void
.end method

.method public static startProfileCameraOnCreate()V
    .locals 3

    .prologue
    .line 683
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CREATE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 686
    const-wide/16 v0, 0x8

    const-string v2, "CameraOncreate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 687
    return-void
.end method

.method public static startProfileCameraOnDestroy()V
    .locals 2

    .prologue
    .line 723
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_DESTROY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 726
    return-void
.end method

.method public static startProfileCameraOnOrientChange()V
    .locals 2

    .prologue
    .line 785
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_ORIENT_CHANGE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 788
    return-void
.end method

.method public static startProfileCameraOnPause()V
    .locals 2

    .prologue
    .line 711
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_PAUSE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 714
    return-void
.end method

.method public static startProfileCameraOnResume()V
    .locals 3

    .prologue
    .line 697
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_RESUME:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 700
    const-wide/16 v0, 0x8

    const-string v2, "CameraOnResume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 701
    return-void
.end method

.method public static startProfileCameraOpen()V
    .locals 3

    .prologue
    .line 335
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_OPEN:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 338
    const-wide/16 v0, 0x8

    const-string v2, "CameraOpen"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 339
    return-void
.end method

.method public static startProfileCameraParameterCopy()V
    .locals 2

    .prologue
    .line 829
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PARAMETER_COPY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 832
    return-void
.end method

.method public static startProfileCameraPreviewPreReadyBlock()V
    .locals 2

    .prologue
    .line 841
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PREVIEW_PRE_READY_BLOCK:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 844
    return-void
.end method

.method public static startProfileCameraPreviewPreReadyOpen()V
    .locals 2

    .prologue
    .line 853
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PREVIEW_PRE_READY_OPEN:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 856
    return-void
.end method

.method public static startProfileCameraRelease()V
    .locals 2

    .prologue
    .line 375
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_RELEASE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 378
    return-void
.end method

.method public static startProfileCameraStartUp()V
    .locals 3

    .prologue
    .line 759
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_START_UP:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 762
    const-wide/16 v0, 0x8

    const-string v2, "CameraStartUp"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 763
    return-void
.end method

.method public static startProfileCameraViewOperation()V
    .locals 2

    .prologue
    .line 817
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_VIEW_OPERATION:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 820
    return-void
.end method

.method public static startProfileDrawScreenNail()V
    .locals 3

    .prologue
    .line 619
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_DRAW_SCREEN_NAIL:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 622
    const-wide/16 v0, 0x8

    const-string v2, "DrawScreenNail"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 623
    return-void
.end method

.method public static startProfileEffectrecorderStart()V
    .locals 2

    .prologue
    .line 573
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_EFFECTRECORDER_START:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 576
    return-void
.end method

.method public static startProfileFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 600
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 603
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 604
    return-void
.end method

.method public static startProfileGetParameters()V
    .locals 3

    .prologue
    .line 387
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_GET_PARAMETERS:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 390
    const-wide/16 v0, 0x8

    const-string v2, "GetPara"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 391
    return-void
.end method

.method public static startProfileHandleMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 797
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HANDLE_MSG:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLogMetaString(IILjava/lang/String;)I

    .line 800
    return-void
.end method

.method public static startProfileInitFocusManager()V
    .locals 2

    .prologue
    .line 963
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_FOCUS_MGR:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 966
    return-void
.end method

.method public static startProfileInitMediarecorder()V
    .locals 2

    .prologue
    .line 543
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_INIT_MEDIARECORDER:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 546
    return-void
.end method

.method public static startProfileInitOpeningProcess()V
    .locals 2

    .prologue
    .line 865
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_OPEN_PROCESS:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 868
    return-void
.end method

.method public static startProfileInitPref()V
    .locals 2

    .prologue
    .line 891
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_CAMERA_PREF:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 894
    return-void
.end method

.method public static startProfileMediarecorderStart()V
    .locals 2

    .prologue
    .line 555
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_MEDIARECORDER_START:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 558
    return-void
.end method

.method public static startProfileNotifyOrientChanged()V
    .locals 2

    .prologue
    .line 921
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_NOTIFY_ORIENT_CHANGED:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 924
    return-void
.end method

.method public static startProfileReInflateViewManager()V
    .locals 2

    .prologue
    .line 939
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_RE_INFLATE_VIEW_MGR:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 942
    return-void
.end method

.method public static startProfileSetDisplayOrientation()V
    .locals 2

    .prologue
    .line 903
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_DISP_ORIENT:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 906
    return-void
.end method

.method public static startProfileSetParameters()V
    .locals 2

    .prologue
    .line 401
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PARAMETERS:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 404
    return-void
.end method

.method public static startProfileStartPreview()V
    .locals 3

    .prologue
    .line 349
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_START_PREVIEW:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 352
    const-wide/16 v0, 0x8

    const-string v2, "StartPreview"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 353
    return-void
.end method

.method public static startProfileStartVideoRecording()V
    .locals 2

    .prologue
    .line 507
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_START_RECORD:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 510
    return-void
.end method

.method public static startProfileStopPreview()V
    .locals 2

    .prologue
    .line 363
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_STOP_PREVIEW:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 366
    return-void
.end method

.method public static startProfileStopVideoRecording()V
    .locals 2

    .prologue
    .line 519
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STOP_RECORD:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 522
    return-void
.end method

.method public static startProfileStorePicture()V
    .locals 2

    .prologue
    .line 443
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_STORE_PICTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 446
    return-void
.end method

.method public static startProfileStoreVideo()V
    .locals 2

    .prologue
    .line 531
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STORE_VIDEO:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 534
    return-void
.end method

.method public static startProfileSwitchCamera()V
    .locals 2

    .prologue
    .line 473
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SWITCH_CAMERA:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 476
    return-void
.end method

.method public static startProfileTakePicture()V
    .locals 2

    .prologue
    .line 413
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_TAKE_PICTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 416
    return-void
.end method

.method public static startProfileUpdateSurfaceTexture()V
    .locals 2

    .prologue
    .line 951
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_UPDATE_SURFACE_TEXTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 954
    return-void
.end method

.method public static stopProfileAnimateCapture()V
    .locals 2

    .prologue
    .line 640
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_ANIMATE_CAPTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 643
    return-void
.end method

.method public static stopProfileAnimateSwitchCamera()V
    .locals 2

    .prologue
    .line 653
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_ANIMATE_SWITCH_CAMERA:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 656
    return-void
.end method

.method public static stopProfileApplyParameterForCapture()V
    .locals 2

    .prologue
    .line 467
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_APPLY_PARAMETER_FOR_CAPTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 470
    return-void
.end method

.method public static stopProfileApplyParameters()V
    .locals 2

    .prologue
    .line 884
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_APPLY_PARAMETERS:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 887
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 888
    return-void
.end method

.method public static stopProfileApplyParamsToUiImmediately()V
    .locals 2

    .prologue
    .line 991
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_APPLY_PARAM_UI_IMMEDIAT:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 994
    return-void
.end method

.method public static stopProfileCameraExitByBackKey()V
    .locals 2

    .prologue
    .line 741
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_EXIT_BY_BACK_KEY:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 744
    return-void
.end method

.method public static stopProfileCameraGalleryBackKey()V
    .locals 2

    .prologue
    .line 753
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_GALLERY_BACK_KEY:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 756
    return-void
.end method

.method public static stopProfileCameraOnConfigChange()V
    .locals 2

    .prologue
    .line 779
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CONFIG_CHANGE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 782
    return-void
.end method

.method public static stopProfileCameraOnCreate()V
    .locals 2

    .prologue
    .line 690
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CREATE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 693
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 694
    return-void
.end method

.method public static stopProfileCameraOnDestroy()V
    .locals 2

    .prologue
    .line 729
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_DESTROY:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 732
    return-void
.end method

.method public static stopProfileCameraOnOrientChange()V
    .locals 2

    .prologue
    .line 791
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_ORIENT_CHANGE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 794
    return-void
.end method

.method public static stopProfileCameraOnPause()V
    .locals 2

    .prologue
    .line 717
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_PAUSE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 720
    return-void
.end method

.method public static stopProfileCameraOnResume()V
    .locals 2

    .prologue
    .line 704
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_RESUME:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 707
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    return-void
.end method

.method public static stopProfileCameraOpen()V
    .locals 2

    .prologue
    .line 342
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_OPEN:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 345
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 346
    return-void
.end method

.method public static stopProfileCameraParameterCopy()V
    .locals 2

    .prologue
    .line 835
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PARAMETER_COPY:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 838
    return-void
.end method

.method public static stopProfileCameraPreviewPreReadyBlock()V
    .locals 2

    .prologue
    .line 847
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PREVIEW_PRE_READY_BLOCK:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 850
    return-void
.end method

.method public static stopProfileCameraPreviewPreReadyOpen()V
    .locals 2

    .prologue
    .line 859
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_PREVIEW_PRE_READY_OPEN:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 862
    return-void
.end method

.method public static stopProfileCameraRelease()V
    .locals 2

    .prologue
    .line 381
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_RELEASE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 384
    return-void
.end method

.method public static stopProfileCameraStartUp()V
    .locals 2

    .prologue
    .line 766
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_START_UP:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 769
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 770
    return-void
.end method

.method public static stopProfileCameraViewOperation()V
    .locals 2

    .prologue
    .line 823
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_VIEW_OPERATION:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 826
    return-void
.end method

.method public static stopProfileDrawScreenNail()V
    .locals 2

    .prologue
    .line 626
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_DRAW_SCREEN_NAIL:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 629
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    return-void
.end method

.method public static stopProfileEffectrecorderStart()V
    .locals 2

    .prologue
    .line 579
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_EFFECTRECORDER_START:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 582
    return-void
.end method

.method public static stopProfileFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 607
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 610
    return-void
.end method

.method public static stopProfileGetParameters()V
    .locals 2

    .prologue
    .line 394
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_GET_PARAMETERS:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 397
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 398
    return-void
.end method

.method public static stopProfileHandleMessage()V
    .locals 2

    .prologue
    .line 803
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HANDLE_MSG:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 806
    return-void
.end method

.method public static stopProfileInitFocusManager()V
    .locals 2

    .prologue
    .line 969
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_FOCUS_MGR:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 972
    return-void
.end method

.method public static stopProfileInitMediarecorder()V
    .locals 2

    .prologue
    .line 549
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_INIT_MEDIARECORDER:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 552
    return-void
.end method

.method public static stopProfileInitOpeningProcess()V
    .locals 2

    .prologue
    .line 871
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_OPEN_PROCESS:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 874
    return-void
.end method

.method public static stopProfileInitPref()V
    .locals 2

    .prologue
    .line 897
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_INIT_CAMERA_PREF:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 900
    return-void
.end method

.method public static stopProfileMediarecorderStart()V
    .locals 2

    .prologue
    .line 561
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_MEDIARECORDER_START:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 564
    return-void
.end method

.method public static stopProfileNotifyOrientChanged()V
    .locals 2

    .prologue
    .line 927
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_NOTIFY_ORIENT_CHANGED:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 930
    return-void
.end method

.method public static stopProfileReInflateViewManager()V
    .locals 2

    .prologue
    .line 945
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_RE_INFLATE_VIEW_MGR:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 948
    return-void
.end method

.method public static stopProfileSetDisplayOrientation()V
    .locals 2

    .prologue
    .line 909
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_DISP_ORIENT:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 912
    return-void
.end method

.method public static stopProfileSetParameters()V
    .locals 2

    .prologue
    .line 407
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PARAMETERS:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 410
    return-void
.end method

.method public static stopProfileStartPreview()V
    .locals 2

    .prologue
    .line 356
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_START_PREVIEW:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 359
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 360
    return-void
.end method

.method public static stopProfileStartVideoRecording()V
    .locals 2

    .prologue
    .line 513
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_START_RECORD:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 516
    return-void
.end method

.method public static stopProfileStopPreview()V
    .locals 2

    .prologue
    .line 369
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_STOP_PREVIEW:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 372
    return-void
.end method

.method public static stopProfileStopVideoRecording()V
    .locals 2

    .prologue
    .line 525
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STOP_RECORD:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 528
    return-void
.end method

.method public static stopProfileStorePicture()V
    .locals 2

    .prologue
    .line 449
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_STORE_PICTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 452
    return-void
.end method

.method public static stopProfileStoreVideo()V
    .locals 2

    .prologue
    .line 537
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STORE_VIDEO:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 540
    return-void
.end method

.method public static stopProfileSwitchCamera()V
    .locals 2

    .prologue
    .line 479
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SWITCH_CAMERA:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 482
    return-void
.end method

.method public static stopProfileTakePicture()V
    .locals 2

    .prologue
    .line 419
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_TAKE_PICTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 422
    return-void
.end method

.method public static stopProfileUpdateSurfaceTexture()V
    .locals 2

    .prologue
    .line 957
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_UPDATE_SURFACE_TEXTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 960
    return-void
.end method

.method public static triggerContinueAutoFocus()V
    .locals 2

    .prologue
    .line 490
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CONTINUE_AUTO_FOCUS:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 493
    return-void
.end method

.method public static triggerFirstFrameAvailable()V
    .locals 3

    .prologue
    .line 593
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 596
    const-wide/16 v0, 0x8

    const-string v2, "FrameAvailable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 597
    return-void
.end method

.method public static triggerFrameAvailable()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x8

    .line 585
    const-string v0, "triggerFrameAvailable"

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 586
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FRAME_AVAILABLE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 589
    const-string v0, "triggerFrameAvailable"

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 590
    return-void
.end method

.method public static triggerNotifyServerSelfChange()V
    .locals 2

    .prologue
    .line 677
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_NOTIFY_SERVER_SELF_CHANGE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 680
    return-void
.end method

.method public static triggerPhotoDataGrip()V
    .locals 2

    .prologue
    .line 425
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_DATA_GRIP:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 428
    return-void
.end method

.method public static triggerPhotoShutterClick()V
    .locals 2

    .prologue
    .line 437
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHUTTER_CLICK:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 440
    return-void
.end method

.method public static triggerPhotoShutterFocus()V
    .locals 2

    .prologue
    .line 431
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHUTTER_FOCUS:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 434
    return-void
.end method

.method public static triggerProfileLayoutChange(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 975
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_LAYOUT_CHANGE:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLogMetaString(IILjava/lang/String;)I

    .line 978
    return-void
.end method

.method public static triggerProfileShot2ShotAnimate()V
    .locals 2

    .prologue
    .line 455
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHOT2SHOT_ANIMATE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 458
    return-void
.end method

.method public static triggerRequestRender()V
    .locals 2

    .prologue
    .line 613
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_REQUEST_RENDER:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 616
    return-void
.end method

.method public static triggerSetPreviewAspectRatio()V
    .locals 2

    .prologue
    .line 915
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PREVIEW_ASPECT_RATIO:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 918
    return-void
.end method

.method public static triggerSetPreviewTexture()V
    .locals 2

    .prologue
    .line 933
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PREVIEW_TEXT:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 936
    return-void
.end method

.method public static triggerSuperDrawNoAnimate()V
    .locals 2

    .prologue
    .line 671
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SUPER_DRAW_NO_ANIMATE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 674
    return-void
.end method

.method public static triggerSuperDrawOriginFrame()V
    .locals 2

    .prologue
    .line 659
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SUPER_DRAW_ORIGIN_FRAME:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 662
    return-void
.end method

.method public static triggerSuperDrawSizeChange()V
    .locals 2

    .prologue
    .line 665
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SUPER_DRAW_SIZE_CHANGE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 668
    return-void
.end method

.method public static triggerTouchFocus()V
    .locals 2

    .prologue
    .line 484
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_AUTO_FOCUS:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 487
    return-void
.end method

.method public static triggerUpdateRecordingTime()V
    .locals 2

    .prologue
    .line 567
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_UPDATE_RECORDING_TIME:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 570
    return-void
.end method

.method public static triggerVideoShutterClick()V
    .locals 2

    .prologue
    .line 495
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_SHUTTER_CLICK:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 498
    return-void
.end method

.method public static triggerVideoShutterFocus()V
    .locals 2

    .prologue
    .line 501
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_SHUTTER_FOCUS:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLog(II)V

    .line 504
    return-void
.end method

.method public static triggersSendMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 809
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SEND_MSG:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->doMMProfileLogMetaString(IILjava/lang/String;)I

    .line 812
    return-void
.end method
