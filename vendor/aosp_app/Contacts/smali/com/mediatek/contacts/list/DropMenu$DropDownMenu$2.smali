.class Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$2;
.super Ljava/lang/Object;
.source "DropMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$2;->this$0:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu$2;->this$0:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->show()V

    .line 48
    return-void
.end method
