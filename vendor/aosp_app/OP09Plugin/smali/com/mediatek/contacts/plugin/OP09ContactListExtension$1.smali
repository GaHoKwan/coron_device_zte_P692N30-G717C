.class Lcom/mediatek/contacts/plugin/OP09ContactListExtension$1;
.super Ljava/lang/Object;
.source "OP09ContactListExtension.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->addOptionsMenu(Landroid/view/Menu;Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/OP09ContactListExtension;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/OP09ContactListExtension;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$1;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactListExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$1;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactListExtension;

    #getter for: Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension;->access$000(Lcom/mediatek/contacts/plugin/OP09ContactListExtension;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/contacts/plugin/OP09ContactListExtension$ShowSimCardStorageInfoTask;->showSimCardStorageInfo(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
