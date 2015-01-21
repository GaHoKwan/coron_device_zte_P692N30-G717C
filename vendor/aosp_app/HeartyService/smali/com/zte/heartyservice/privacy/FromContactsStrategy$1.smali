.class Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;
.super Ljava/lang/Object;
.source "FromContactsStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FromContactsStrategy;->updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

.field final synthetic val$conSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FromContactsStrategy;Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;->val$conSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;->this$0:Lcom/zte/heartyservice/privacy/FromContactsStrategy;

    #getter for: Lcom/zte/heartyservice/privacy/FromContactsStrategy;->mActivity:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FromContactsStrategy;->access$000(Lcom/zte/heartyservice/privacy/FromContactsStrategy;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FromContactsStrategy$1;->val$conSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method
