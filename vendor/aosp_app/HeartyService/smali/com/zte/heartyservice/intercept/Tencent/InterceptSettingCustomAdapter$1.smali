.class Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$1;
.super Ljava/lang/Object;
.source "InterceptSettingCustomAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 28
    .local v0, position:I
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->mCallBack:Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;->access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter;)Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptSettingCustomAdapter$SettingCustomCheckCallback;->onCheckChanged(IZ)V

    .line 29
    return-void
.end method
