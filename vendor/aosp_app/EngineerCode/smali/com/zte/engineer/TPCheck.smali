.class public Lcom/zte/engineer/TPCheck;
.super Lcom/zte/engineer/EmActivity;
.source "TPCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPCheck"


# instance fields
.field private btnOK:Landroid/widget/Button;

.field private checkResult:Ljava/lang/String;

.field private ifpass:Landroid/widget/TextView;

.field private isSame:Ljava/lang/String;

.field private softversion_tpversion:Landroid/widget/TextView;

.field private softversion_tpversion_String:Ljava/lang/String;

.field private tpchip_tpversion:Landroid/widget/TextView;

.field private tpchip_tpversion_String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    const-string v1, "TPCheck"

    const-string v2, "JNI Trying to load libtsfwcheck.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v1, "/system/lib/libtsfwcheck.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 36
    const-string v1, "TPCheck"

    const-string v2, "JNI fwloader: loaded fwloader\n"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v0, localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 37
    .end local v0           #localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0       #localUnsatisfiedLinkError:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "TPCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JNI WARNING: Could not load libtsfwcheck.so :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->btnOK:Landroid/widget/Button;

    .line 22
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->tpchip_tpversion:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->softversion_tpversion:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->ifpass:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->tpchip_tpversion_String:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->softversion_tpversion_String:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->checkResult:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->isSame:Ljava/lang/String;

    return-void
.end method

.method public static native touchscreenfwloader(I)Ljava/lang/String;
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "paramView"

    .prologue
    .line 85
    const-string v0, "TPCheck"

    const-string v1, ">>>>>>>>>>onClick()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "TPCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------v.getId()--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    const-string v0, "TPCheck"

    const-string v1, "<<<<<<<<<<onClick()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    const-string v0, "TPCheck"

    const-string v1, "---------emode_status = 0---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f080085
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "paramBundle"

    .prologue
    .line 44
    const-string v0, "TPCheck"

    const-string v1, ">>>>>>>>>>onCreate()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->btnOK:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->tpchip_tpversion:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->softversion_tpversion:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->ifpass:Landroid/widget/TextView;

    .line 55
    const-string v0, "TPCheck"

    const-string v1, "<<<<<<<<<<onCreate()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "TPCheck"

    const-string v1, ">>>>>>>>>>onDestroy()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onDestroy()V

    .line 109
    const-string v0, "TPCheck"

    const-string v1, "<<<<<<<<<<onDestroy()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "TPCheck"

    const-string v1, ">>>>>>>>>>onPause()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    const-string v0, "TPCheck"

    const-string v1, "---------emode_status = 0---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "TPCheck"

    const-string v1, "<<<<<<<<<<onPause()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    const-string v0, "TPCheck"

    const-string v1, ">>>>>>>>>>onResume()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 61
    iput-boolean v2, p0, Lcom/zte/engineer/EmActivity;->Ishield:Z

    .line 62
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emode_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    const-string v0, "TPCheck"

    const-string v1, "---------emode_status = 1---------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v2}, Lcom/zte/engineer/TPCheck;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->tpchip_tpversion_String:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->tpchip_tpversion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/TPCheck;->tpchip_tpversion_String:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/zte/engineer/TPCheck;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->softversion_tpversion_String:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->softversion_tpversion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/TPCheck;->softversion_tpversion_String:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/engineer/TPCheck;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->isSame:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->isSame:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const v0, 0x7f0600cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->checkResult:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->ifpass:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->ifpass:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/engineer/TPCheck;->checkResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->ifpass:Landroid/widget/TextView;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    const-string v0, "TPCheck"

    const-string v1, "<<<<<<<<<<onResume()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 75
    :cond_0
    const v0, 0x7f0600d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/TPCheck;->checkResult:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/zte/engineer/TPCheck;->ifpass:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
