.class Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;
.super Ljava/lang/Object;
.source "FromSingleSmsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListItem"
.end annotation


# instance fields
.field contactTxt:Landroid/widget/TextView;

.field localTxt:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;->this$0:Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy$MessageListItem;-><init>(Lcom/zte/heartyservice/privacy/FromSingleSmsStrategy;)V

    return-void
.end method
