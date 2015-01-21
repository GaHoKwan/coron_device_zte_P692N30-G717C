.class public Lcom/mediatek/mms/op09/OP09StringReplacementExt;
.super Lcom/mediatek/mms/ext/StringReplacementImpl;
.source "OP09StringReplacementExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/OP09StringReplacementExt"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/StringReplacementImpl;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    .line 52
    return-void
.end method


# virtual methods
.method public getCTStrings(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 65
    const-string v0, "Mms/OP09StringReplacementExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP09StringReplacementExt.getCTStrings: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 107
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_8
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_9
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_b
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_c
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getSaveLocationString()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const-string v0, "Mms/OP09StringReplacementExt"

    const-string v1, "OP09StringReplacementExt.getSaveLocationString()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09StringReplacementExt;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableStringReplacement()Z
    .locals 2

    .prologue
    .line 55
    const-string v0, "Mms/OP09StringReplacementExt"

    const-string v1, "isEnableStringReplacement(): true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method
