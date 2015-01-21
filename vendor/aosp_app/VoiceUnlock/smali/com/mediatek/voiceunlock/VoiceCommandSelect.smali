.class public Lcom/mediatek/voiceunlock/VoiceCommandSelect;
.super Landroid/preference/PreferenceActivity;
.source "VoiceCommandSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;
    }
.end annotation


# static fields
.field private static IS_Tablet:Z


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContinuebButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->IS_Tablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->IS_Tablet:Z

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 61
    .local v0, modIntent:Landroid/content/Intent;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->mContinuebButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 82
    invoke-static {}, Lcom/mediatek/voiceunlock/VoiceCommandSelect$VoiceCommandSelectFragment;->getCommandValue()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, commandValue:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 93
    .end local v0           #commandValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    .restart local v0       #commandValue:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/mediatek/voiceunlock/VoiceUnlockSetupIntro;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    const-string v2, "settings_command_value"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v0           #commandValue:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v1, "VoiceUnlockSetting"

    const-string v2, "VoiceCommandSelect: activity onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 71
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->mCancelButton:Landroid/widget/Button;

    .line 74
    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->mContinuebButton:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandSelect;->mContinuebButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
