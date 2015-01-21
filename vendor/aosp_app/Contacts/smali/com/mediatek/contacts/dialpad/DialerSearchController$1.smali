.class Lcom/mediatek/contacts/dialpad/DialerSearchController$1;
.super Ljava/lang/Object;
.source "DialerSearchController.java"

# interfaces
.implements Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/dialpad/DialerSearchController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ListView;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const-string v1, "contacts display or sort order changed"

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsForeground:Z
    invoke-static {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$000(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    #calls: Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceQueryIfNeeded()V
    invoke-static {v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$100(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchController;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->access$202(Lcom/mediatek/contacts/dialpad/DialerSearchController;Z)Z

    goto :goto_0
.end method
