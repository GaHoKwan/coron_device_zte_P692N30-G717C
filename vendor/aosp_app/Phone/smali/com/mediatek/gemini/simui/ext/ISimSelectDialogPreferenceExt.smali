.class public interface abstract Lcom/mediatek/gemini/simui/ext/ISimSelectDialogPreferenceExt;
.super Ljava/lang/Object;
.source "ISimSelectDialogPreferenceExt.java"


# virtual methods
.method public abstract onCreateView(Landroid/preference/Preference;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
.end method

.method public abstract updateDefaultSimPreferenceSimIndicator(Landroid/view/View;Ljava/util/List;I)V
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
.end method
