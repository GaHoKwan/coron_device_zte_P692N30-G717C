.class Lcom/android/uiautomator/core/InteractionController$2;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->sendKeyAndWaitForEvent(IIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$keyCode:I

.field final synthetic val$metaState:I


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$2;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$keyCode:I

    iput p3, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$metaState:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 274
    .local v0, eventTime:J
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$keyCode:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$metaState:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 277
    .local v13, downEvent:Landroid/view/KeyEvent;
    #calls: Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z
    invoke-static {v13}, Lcom/android/uiautomator/core/InteractionController;->access$200(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$keyCode:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/uiautomator/core/InteractionController$2;->val$metaState:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 281
    .local v14, upEvent:Landroid/view/KeyEvent;
    #calls: Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z
    invoke-static {v14}, Lcom/android/uiautomator/core/InteractionController;->access$200(Landroid/view/InputEvent;)Z

    .line 283
    .end local v14           #upEvent:Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method
