.class public abstract Lcom/android/server/FullSmartShowContext;
.super Lcom/android/internal/policy/impl/PolicySmartShowContext;
.source "FullSmartShowContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FullSmartShowContext$SmartShowEventCollection;
    }
.end annotation


# static fields
.field public static final CONFIG_BEHAVIOR_CONFIG_AUTO:Ljava/lang/String; = "CONFIG_AUTO"

.field public static final CONFIG_BEHAVIOR_CONFIG_FORCE:Ljava/lang/String; = "CONFIG_FORCE"

.field public static final CONFIG_BEHAVIOR_CONFIG_NEVER:Ljava/lang/String; = "CONFIG_NERVER"

.field public static final CONFIG_BEHAVIOR_DISPLAY_AUTO:Ljava/lang/String; = "DISPLAY_CHANGE_AUTO"

.field public static final CONFIG_BEHAVIOR_DISPLAY_NEVER:Ljava/lang/String; = "DISPLAY_CHANGE_NEVER"

.field public static final CONFIG_BEHAVIOR_RELAUNCH_AUTO:Ljava/lang/String; = "RELAUNCH_AUTO"

.field public static final CONFIG_BEHAVIOR_RELAUNCH_FORCE:Ljava/lang/String; = "RELAUNCH_FORCE"

.field public static final CONFIG_BEHAVIOR_RELAUNCH_NEVER:Ljava/lang/String; = "RELAUNCH_NEVER"

.field public static final CONFIG_SRC_DISPLAY_PANEL:Ljava/lang/String; = "Panel"

.field public static final CONFIG_SRC_DISPLAY_SAMEWITHDST:Ljava/lang/String; = "SameWithDst"

.field public static final CONFIG_SRC_DISPLAY_VIRTUALPANEL:Ljava/lang/String; = "VirtualPanel"

.field public static final COVER_TYPE_CONFLICT:I = 0x2

.field public static final COVER_TYPE_PAUSE:I = 0x1

.field public static final FLAG_APP_CONFIGURATION_CHANGE_FORCE:Ljava/lang/String; = "APP_CONFIGURATION_CHANGE_FORCE"

.field public static final FLAG_MULTIINSTANCE_ENABLE:Ljava/lang/String; = "MULTIINSTANCE_ENABLE"

.field public static final FLAG_MULTIPROCESS_ENABLE:Ljava/lang/String; = "MULTIPROCESS_ENABLE"

.field public static final FLAG_REQUEST_ORIENTATION_NEVER:Ljava/lang/String; = "REQUEST_ORIENTATION_NEVER"

.field public static final FLAG_ROTATION_MANGLE_ENABLE:Ljava/lang/String; = "ROTATION_MANGLE_ENABLE"

.field public static final FLAG_SMALLEST_DISPLAY_NEVER:Ljava/lang/String; = "SMALLEST_DISPLAY_NEVER"

.field public static final PARAMETER_GET_TOKEN_WITH_PROCESSID:I = 0x0

.field public static final PERFORM_EVENT_COLLECTION:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PolicySmartShowContext;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public abstract addFocusExcludeRegion(Landroid/graphics/RectF;)V
.end method

.method public abstract adjustFrames(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract allowMultiActiveInstance(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract allowMultiInstance(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract allowMultiWindow(Ljava/lang/Object;)Z
.end method

.method public abstract canRotateRemoteDisplay(I)Z
.end method

.method public abstract getAmSmartShowStub()Lcom/android/server/am/IAmSmartShowStub;
.end method

.method public abstract getConfigDiff(IILjava/lang/Object;)I
.end method

.method public abstract getCurrentRemoteDisplayConfiguration(I)Landroid/content/res/Configuration;
.end method

.method public abstract getCurrentRemoteDisplayRotation(I)I
.end method

.method public abstract getDisplayId(ILjava/lang/Object;)I
.end method

.method public abstract getDisplayRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getDstDisplayId(ILjava/lang/Object;)I
.end method

.method public abstract getFocusedDisplayId()I
.end method

.method public abstract getFocusedScreen()I
.end method

.method public abstract getForcedRect(ILandroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
.end method

.method public abstract getIdlerActivity(II)Ljava/lang/String;
.end method

.method public abstract getInputMethodVariables()[I
.end method

.method public abstract getMaxLocalScreen()I
.end method

.method public abstract getMaxScreen()I
.end method

.method public abstract getParameter(IILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getSmartBarRect(II)Landroid/graphics/Rect;
.end method

.method public abstract getSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getSpecialDisplayId(IZ)I
.end method

.method public abstract getWmSmartShowStub()Lcom/android/server/wm/IWmSmartShowStub;
.end method

.method public abstract isForcedOrientation(ILjava/lang/Object;)Z
.end method

.method public abstract isInFeatureList(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract needSkipOrientation(ILjava/lang/Object;)Z
.end method

.method public abstract setFocusedScreen(I)V
.end method

.method public abstract setInputMethodRect(Landroid/graphics/Rect;)V
.end method

.method public abstract shouldKeepTranslucent(Ljava/lang/Object;)Z
.end method

.method public abstract updateConfiguration(ILandroid/content/res/Configuration;)V
.end method

.method public abstract updateFocusedDisplayId()V
.end method
