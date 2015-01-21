.class public Lcom/zte/heartyservice/common/datatype/NewDialog;
.super Landroid/app/Dialog;
.source "NewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;
    }
.end annotation


# static fields
.field public static final DIALOG_CHECK_NEWVERSION:I = 0x4

.field public static final DIALOG_INTERCEPT_SMS_CALL_RESTOR:I = 0x6

.field public static final DIALOG_PRIVACY_CONTACT_ADD:I = 0x3

.field public static final DIALOG_PRIVACY_ENCRYPT:I = 0x5

.field public static final DIALOG_PROGRESS:I = 0x1

.field public static final DIALOG_RADIO_BUTTON:I = 0x2

.field private static final MINUS_ONE_SECONDS:I = 0x0

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

.field private chooseTimer:Ljava/lang/Thread;

.field context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mTextView:Landroid/widget/TextView;

.field private time:I

.field private total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    .line 37
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    .line 40
    new-instance v0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/NewDialog$1;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/NewDialog$2;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->chooseTimer:Ljava/lang/Thread;

    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->context:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, -0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    .line 37
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    .line 40
    new-instance v0, Lcom/zte/heartyservice/common/datatype/NewDialog$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/NewDialog$1;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/NewDialog$2;-><init>(Lcom/zte/heartyservice/common/datatype/NewDialog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->chooseTimer:Ljava/lang/Thread;

    .line 87
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->context:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/common/datatype/NewDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    return v0
.end method

.method static synthetic access$020(Lcom/zte/heartyservice/common/datatype/NewDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/common/datatype/NewDialog;)Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/common/datatype/NewDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I

    return v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/common/datatype/NewDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/common/datatype/NewDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setTotal(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/common/datatype/NewDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setTime(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/common/datatype/NewDialog;Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->setTimeoutCb(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)V

    return-void
.end method

.method public static setNewDialogWidth(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 7
    .parameter "activity"
    .parameter "dialog"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 91
    .local v1, m:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 92
    .local v0, d:Landroid/view/Display;
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 93
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 94
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    return-void
.end method

.method public static setNewDialogWidth(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 7
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 97
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 98
    .local v1, m:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 99
    .local v0, d:Landroid/view/Display;
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 100
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 101
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    return-void
.end method

.method private setTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 548
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I

    .line 549
    return-void
.end method

.method private setTimeoutCb(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->cb:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;

    .line 553
    return-void
.end method

.method private setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 544
    iput p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    .line 545
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->chooseTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 566
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 567
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 558
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I

    if-lez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog;->chooseTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 561
    :cond_0
    return-void
.end method
