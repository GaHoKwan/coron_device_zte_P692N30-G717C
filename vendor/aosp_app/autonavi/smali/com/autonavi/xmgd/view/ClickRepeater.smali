.class public Lcom/autonavi/xmgd/view/ClickRepeater;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEFAULT_REPEAT_DELAY:I = 0xb4

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final WHAT_PERFORM_CLICK:I = 0x1


# instance fields
.field private isPressDown:Z

.field private mHostView:Landroid/view/View;

.field private final mRepeatDelay:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/autonavi/xmgd/view/ClickRepeater;->TAP_TIMEOUT:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0xb4

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/ClickRepeater;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->isPressDown:Z

    new-instance v0, Lcom/autonavi/xmgd/view/ClickRepeater$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/ClickRepeater$1;-><init>(Lcom/autonavi/xmgd/view/ClickRepeater;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mHostView:Landroid/view/View;

    iput p2, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mRepeatDelay:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/view/ClickRepeater;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/view/ClickRepeater;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mRepeatDelay:I

    return v0
.end method

.method public static attach(Landroid/view/View;)Lcom/autonavi/xmgd/view/ClickRepeater;
    .locals 1

    new-instance v0, Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/view/ClickRepeater;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static attach(Landroid/view/View;I)Lcom/autonavi/xmgd/view/ClickRepeater;
    .locals 1

    new-instance v0, Lcom/autonavi/xmgd/view/ClickRepeater;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xmgd/view/ClickRepeater;-><init>(Landroid/view/View;I)V

    return-object v0
.end method


# virtual methods
.method public getIsPressDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->isPressDown:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClickRepeater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    iput-boolean v5, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->isPressDown:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    sget v3, Lcom/autonavi/xmgd/view/ClickRepeater;->TAP_TIMEOUT:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->isPressDown:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeHandler()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ClickRepeater;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
