.class public Lcom/mediatek/engineermode/audio/Audio;
.super Landroid/app/Activity;
.source "Audio.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final AUDIO_LOGGER:I = 0x8

.field public static final AUDIO_VERSION_1:Ljava/lang/String; = "GET_AUDIO_VOLUME_VERSION=1"

.field public static final AUDIO_VERSION_COMMAND:Ljava/lang/String; = "GET_AUDIO_VOLUME_VERSION"

.field public static final CURRENT_MODE:Ljava/lang/String; = "CurrentMode"

.field private static final DEBUG_INFO:I = 0x5

.field private static final DEBUG_SESSION:I = 0x6

.field public static final ENHANCE_MODE:Ljava/lang/String; = "is_enhance"

.field private static final HEADSET_LOUDSPEAKER_MODE:I = 0x3

.field private static final HEADSET_MODE:I = 0x1

.field private static final LOUDSPEAKER_MODE:I = 0x2

.field private static final NORMAL_MODE:I = 0x0

.field private static final SPEECH_ENHANCE:I = 0x4

.field private static final SPEECH_LOGGER:I = 0x7

.field public static final TAG:Ljava/lang/String; = "EM/Audio"


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 95
    const/high16 v8, 0x7f0b

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 96
    .local v5, mAudioFunctionList:Landroid/widget/ListView;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, strArr:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v1, v2

    .line 100
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v6           #str:Ljava/lang/String;
    :cond_0
    const-string v8, "GET_AUDIO_VOLUME_VERSION"

    invoke-static {v8}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/engineermode/audio/Audio;->mVersion:Ljava/lang/String;

    .line 103
    const-string v8, "EM/Audio"

    iget-object v9, p0, Lcom/mediatek/engineermode/audio/Audio;->mVersion:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v8, "GET_AUDIO_VOLUME_VERSION=1"

    iget-object v9, p0, Lcom/mediatek/engineermode/audio/Audio;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 105
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v0, p0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 109
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GET_AUDIO_VOLUME_VERSION=1"

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/Audio;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x3

    if-gt p3, v1, :cond_2

    .line 131
    const-class v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    const-string v1, "CurrentMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v1, "is_enhance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 175
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v1, 0x2

    if-gt p3, v1, :cond_1

    .line 140
    const-class v1, Lcom/mediatek/engineermode/audio/AudioModeSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const-string v1, "CurrentMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "is_enhance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 150
    :cond_2
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    const-class v1, Lcom/mediatek/engineermode/audio/AudioSpeechEnhancement;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :pswitch_1
    const-class v1, Lcom/mediatek/engineermode/audio/AudioDebugInfo;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :pswitch_2
    const-class v1, Lcom/mediatek/engineermode/audio/AudioDebugSession;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :pswitch_3
    const-class v1, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :pswitch_4
    const-class v1, Lcom/mediatek/engineermode/audio/AudioAudioLogger;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
