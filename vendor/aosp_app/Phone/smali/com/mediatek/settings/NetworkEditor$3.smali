.class Lcom/mediatek/settings/NetworkEditor$3;
.super Ljava/lang/Object;
.source "NetworkEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    #getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    invoke-static {v0}, Lcom/mediatek/settings/NetworkEditor;->access$600(Lcom/mediatek/settings/NetworkEditor;)Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    #getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkEditor;->access$400(Lcom/mediatek/settings/NetworkEditor;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$500(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetworkId(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    #getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/mediatek/settings/NetworkEditor;->access$700(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    #getter for: Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/settings/NetworkEditor;->access$400(Lcom/mediatek/settings/NetworkEditor;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$500(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor$3;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 136
    :cond_0
    return-void
.end method
