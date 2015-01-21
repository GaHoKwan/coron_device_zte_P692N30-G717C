.class Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 203
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$002(Lcom/android/contacts/calllog/CallLogFragment;Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$102(Lcom/android/contacts/calllog/CallLogFragment;Z)Z

    .line 206
    return-void
.end method
