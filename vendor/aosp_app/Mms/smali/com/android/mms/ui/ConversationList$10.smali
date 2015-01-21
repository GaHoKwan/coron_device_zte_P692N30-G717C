.class Lcom/android/mms/ui/ConversationList$10;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->setupActionBar2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 2609
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$4800(Lcom/android/mms/ui/ConversationList;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$10;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mAccountDropdown:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$4900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;->show()V

    .line 2615
    :cond_0
    return-void
.end method
