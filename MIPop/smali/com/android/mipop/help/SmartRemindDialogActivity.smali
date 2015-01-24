.class public Lcom/android/mipop/help/SmartRemindDialogActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DEBUG:Z

.field private ct:Landroid/widget/ImageView;

.field private cu:Landroid/widget/TextView;

.field private cv:Landroid/widget/Button;

.field private cw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->DEBUG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cw:I

    return-void
.end method

.method private B()V
    .locals 1

    const-string v0, "DialogModeActivity.initDialogView"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->setContentView(I)V

    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cv:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private C()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "DialogModeActivity.setDialogView"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "smart_remind_dialog_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cu:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    const v3, 0x7f02009c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cu:Landroid/widget/TextView;

    const v3, 0x7f07002d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    const v3, 0x7f02009a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cu:Landroid/widget/TextView;

    const v3, 0x7f07002e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    const v3, 0x7f02009b

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cu:Landroid/widget/TextView;

    const v3, 0x7f07002f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/mipop/help/SmartRemindDialogActivity;->d(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->ct:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cu:Landroid/widget/TextView;

    const v3, 0x7f070030

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d(I)V
    .locals 0

    iput p1, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cw:I

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MIPop/SmartRemindDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "DialogModeActivity.onClick"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mipop/help/SmartRemindDialogActivity;->cv:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SmartRemindDialogActivity.onCreate"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->B()V

    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->C()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "DialogModeActivity.onDestroy"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "DialogModeActivity.onNewIntent"

    invoke-direct {p0, v0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->B()V

    invoke-direct {p0}, Lcom/android/mipop/help/SmartRemindDialogActivity;->C()V

    return-void
.end method
