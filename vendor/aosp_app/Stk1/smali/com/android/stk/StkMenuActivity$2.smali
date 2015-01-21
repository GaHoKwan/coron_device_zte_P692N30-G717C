.class Lcom/android/stk/StkMenuActivity$2;
.super Ljava/lang/Object;
.source "StkMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, helpVisible:Z
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    #getter for: Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v1}, Lcom/android/stk/StkMenuActivity;->access$000(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkMenuInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity$2;->this$0:Lcom/android/stk/StkMenuActivity;

    #getter for: Lcom/android/stk/StkMenuActivity;->mMenuInstance:Lcom/android/stk/StkMenuInstance;
    invoke-static {v1}, Lcom/android/stk/StkMenuActivity;->access$000(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkMenuInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stk/StkMenuInstance;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 239
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 240
    const/4 v1, 0x3

    const v2, 0x7f060007

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 242
    :cond_1
    return-void
.end method
