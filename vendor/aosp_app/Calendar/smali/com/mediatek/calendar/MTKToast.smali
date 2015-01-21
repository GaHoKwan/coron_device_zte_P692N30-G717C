.class public Lcom/mediatek/calendar/MTKToast;
.super Ljava/lang/Object;
.source "MTKToast.java"


# static fields
.field private static final DEFAULT_TOAST_STRING:Ljava/lang/String; = "MTKToast"

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static getToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 2
    .parameter "context"
    .parameter "msg"
    .parameter "duration"

    .prologue
    .line 63
    sget-object v0, Lcom/mediatek/calendar/MTKToast;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MTKToast"

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/mediatek/calendar/MTKToast;->sToast:Landroid/widget/Toast;

    .line 66
    :cond_0
    sget-object v0, Lcom/mediatek/calendar/MTKToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget-object v0, Lcom/mediatek/calendar/MTKToast;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 68
    sget-object v0, Lcom/mediatek/calendar/MTKToast;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static toast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/calendar/MTKToast;->toast(Landroid/content/Context;II)V

    .line 32
    return-void
.end method

.method public static toast(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mediatek/calendar/MTKToast;->toast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/calendar/MTKToast;->toast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "msg"
    .parameter "duration"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/mediatek/calendar/MTKToast;->getToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    .line 52
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    return-void
.end method
