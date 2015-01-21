.class Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$5;
.super Ljava/lang/Object;
.source "OP09ContactDetailEnhancementExtension.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$5;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 418
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    .line 411
    .local v0, position:I
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$5;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;

    invoke-virtual {v1, v0}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->switchTab(I)V

    .line 412
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->select()V

    .line 413
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 406
    return-void
.end method
