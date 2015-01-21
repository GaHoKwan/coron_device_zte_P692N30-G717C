.class Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;
.super Ljava/lang/Object;
.source "SimInfoSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/SimInfoSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CodeNameClickListener"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListType:I

.field final synthetic this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->mList:Ljava/util/List;

    .line 69
    iput p3, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->mListType:I

    .line 70
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, item:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    check-cast v0, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 78
    .restart local v0       #item:Lcom/zte/heartyservice/net/CodeNameItem;
    :cond_0
    if-eqz v0, :cond_1

    .line 79
    iget v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #getter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;
    invoke-static {v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$000(Lcom/zte/heartyservice/net/SimInfoSettingActivity;)Lcom/zte/heartyservice/net/CodeNameItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/CodeNameItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    #setter for: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->mCurCarrier:Lcom/zte/heartyservice/net/CodeNameItem;
    invoke-static {v1, v0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$002(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Lcom/zte/heartyservice/net/CodeNameItem;)Lcom/zte/heartyservice/net/CodeNameItem;

    .line 83
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$CodeNameClickListener;->this$0:Lcom/zte/heartyservice/net/SimInfoSettingActivity;

    const/4 v2, 0x0

    #calls: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->refreshCarrierUI(Lcom/zte/heartyservice/net/CodeNameItem;)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$100(Lcom/zte/heartyservice/net/SimInfoSettingActivity;Lcom/zte/heartyservice/net/CodeNameItem;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
