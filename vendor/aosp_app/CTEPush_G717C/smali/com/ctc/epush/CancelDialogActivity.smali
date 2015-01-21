.class public Lcom/ctc/epush/CancelDialogActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    sput-boolean v0, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->g:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sput-boolean v1, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/ctc/epush/CancelDialogActivity;->finish()V

    goto :goto_0

    :pswitch_3
    sput-boolean v1, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    iget-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->g:Landroid/app/NotificationManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    const-string v1, "com.ctc.epush.needDownApkName"

    const-string v2, "[]"

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/ctc/epush/CancelDialogActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080002
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->setContentView(I)V

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->c:Landroid/widget/Button;

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->d:Landroid/widget/Button;

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/epush/CancelDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ctc/epush/CancelDialogActivity;->g:Landroid/app/NotificationManager;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/ctc/epush/CancelDialogActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-boolean v0, Lcom/ctc/epush/CancelDialogActivity;->a:Z

    sput-boolean v0, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ctc/epush/CancelDialogActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
