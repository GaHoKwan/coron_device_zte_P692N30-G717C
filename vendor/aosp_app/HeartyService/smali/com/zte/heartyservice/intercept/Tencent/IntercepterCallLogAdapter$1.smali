.class Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;
.super Ljava/lang/Object;
.source "IntercepterCallLogAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->mCallback:Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter;)Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$1;->val$position:I

    invoke-interface {v0, v1, p2}, Lcom/zte/heartyservice/intercept/Tencent/IntercepterCallLogAdapter$InterceperListCallback;->onItemCheckStateChanged(IZ)V

    .line 127
    :cond_0
    return-void
.end method
