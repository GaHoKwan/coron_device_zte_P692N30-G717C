.class Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZTETextPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/datatype/ZTETextPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    #getter for: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$300(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->mCanceled:Z

    .line 433
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->this$0:Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    const/4 v1, 0x1

    #calls: Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->setSelectorWheelState(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->access$200(Lcom/zte/heartyservice/common/datatype/ZTETextPicker;I)V

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$2;->mCanceled:Z

    .line 426
    return-void
.end method
