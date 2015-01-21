.class Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;
.super Ljava/lang/Object;
.source "ContactsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updateCallLogView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

.field final synthetic val$conSmsCallLogItem:Lcom/zte/heartyservice/privacy/CallRecordListItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Lcom/zte/heartyservice/privacy/CallRecordListItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;->val$conSmsCallLogItem:Lcom/zte/heartyservice/privacy/CallRecordListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;->val$conSmsCallLogItem:Lcom/zte/heartyservice/privacy/CallRecordListItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    return-void
.end method
