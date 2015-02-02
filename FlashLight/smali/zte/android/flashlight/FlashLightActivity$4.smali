.class Lzte/android/flashlight/FlashLightActivity$4;
.super Ljava/lang/Object;
.source "FlashLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/android/flashlight/FlashLightActivity;->initFristTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashLightActivity;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity$4;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 195
    sget v0, Lzte/android/flashlight/FlashState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, 0x0

    sput-boolean v0, Lzte/android/flashlight/FlashState;->resumeOpenLight:Z

    .line 197
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity$4;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->closeLight()V
    invoke-static {v0}, Lzte/android/flashlight/FlashLightActivity;->access$100(Lzte/android/flashlight/FlashLightActivity;)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lzte/android/flashlight/FlashState;->resumeOpenLight:Z

    .line 200
    iget-object v0, p0, Lzte/android/flashlight/FlashLightActivity$4;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->openLight()V
    invoke-static {v0}, Lzte/android/flashlight/FlashLightActivity;->access$200(Lzte/android/flashlight/FlashLightActivity;)V

    goto :goto_0
.end method
