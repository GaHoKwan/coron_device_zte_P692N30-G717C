.class Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;
.super Ljava/lang/Object;
.source "FromSingleCallLogStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogListItem"
.end annotation


# instance fields
.field callLength:Landroid/widget/TextView;

.field callTime:Landroid/widget/TextView;

.field fromOrToImg:Landroid/widget/ImageView;

.field fromOrToTxt:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;->this$0:Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy$CallLogListItem;-><init>(Lcom/zte/heartyservice/privacy/FromSingleCallLogStrategy;)V

    return-void
.end method
