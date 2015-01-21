.class Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;
.super Ljava/lang/Object;
.source "IntercepterSMSLogAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$1;->val$position:I

    invoke-interface {v0, v1, p2}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterSMSLogAdapter$InterceperListCallback;->onItemCheckStateChanged(IZ)V

    .line 125
    :cond_0
    return-void
.end method
