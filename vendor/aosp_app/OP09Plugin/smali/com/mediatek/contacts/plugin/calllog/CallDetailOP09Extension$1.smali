.class Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;
.super Ljava/lang/Object;
.source "CallDetailOP09Extension.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->showDeleteAllCallsWithNumberDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;->this$0:Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;

    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;->this$0:Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;

    #getter for: Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->access$000(Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;)Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;->deleteSpecifiedCalls(Ljava/lang/String;)V

    .line 133
    return-void
.end method
