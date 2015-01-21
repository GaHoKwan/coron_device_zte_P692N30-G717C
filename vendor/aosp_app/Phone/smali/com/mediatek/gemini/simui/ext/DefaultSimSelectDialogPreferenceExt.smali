.class public Lcom/mediatek/gemini/simui/ext/DefaultSimSelectDialogPreferenceExt;
.super Ljava/lang/Object;
.source "DefaultSimSelectDialogPreferenceExt.java"

# interfaces
.implements Lcom/mediatek/gemini/simui/ext/ISimSelectDialogPreferenceExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSimSelectDialogPreferenceExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/preference/Preference;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "pref"
    .parameter "parent"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 22
    const-string v0, "DefaultSimSelectDialogPreferenceExt"

    const-string v1, "updateDefaultSimPreferenceLayout"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public updateDefaultSimPreferenceSimIndicator(Landroid/view/View;Ljava/util/List;I)V
    .locals 2
    .parameter "viewContainer"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const-string v0, "DefaultSimSelectDialogPreferenceExt"

    const-string v1, "updateDefaultSimPreferenceLayout"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
