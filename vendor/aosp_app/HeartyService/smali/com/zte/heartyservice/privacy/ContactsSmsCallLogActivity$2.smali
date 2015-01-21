.class Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$2;
.super Ljava/lang/Object;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$2;->this$0:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->access$200(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->cancelTask()V

    .line 201
    return-void
.end method
