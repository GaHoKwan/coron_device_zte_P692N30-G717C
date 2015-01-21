.class Lcom/android/contacts/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment;->updateOnEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$2;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$2;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, 0x1

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$600(Lcom/android/contacts/calllog/CallLogFragment;Z)V

    .line 933
    return-void
.end method
