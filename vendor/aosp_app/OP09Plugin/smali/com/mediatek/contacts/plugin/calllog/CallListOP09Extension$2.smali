.class Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;
.super Ljava/lang/Object;
.source "CallListOP09Extension.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->showDeleteAllCallsWithContactDialog(Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;

.field final synthetic val$callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;->this$0:Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;

    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;->val$callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;->this$0:Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;

    #getter for: Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;->access$000(Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension;)Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calls.raw_contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/calllog/CallListOP09Extension$2;->val$callLogInfo:Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;

    iget-object v2, v2, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget v2, v2, Lcom/android/contacts/calllog/ContactInfo;->rawContactId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;->deleteSpecifiedCalls(Ljava/lang/String;)V

    .line 276
    return-void
.end method
