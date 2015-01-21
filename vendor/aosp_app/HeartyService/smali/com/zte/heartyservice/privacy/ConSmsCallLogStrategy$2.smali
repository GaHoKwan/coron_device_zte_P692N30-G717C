.class Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$2;
.super Ljava/lang/Object;
.source "ConSmsCallLogStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->setCancelBtnListener(Landroid/widget/Button;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$2;->this$0:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 70
    return-void
.end method
