.class Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$3;
.super Ljava/lang/Object;
.source "InterceptKeywordListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;->showRemoveDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    return-void
.end method
