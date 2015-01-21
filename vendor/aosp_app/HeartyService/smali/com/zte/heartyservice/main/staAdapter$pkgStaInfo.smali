.class Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;
.super Ljava/lang/Object;
.source "staAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/staAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "pkgStaInfo"
.end annotation


# instance fields
.field last:J

.field name:Ljava/lang/String;

.field next:J

.field final synthetic this$0:Lcom/zte/heartyservice/main/staAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/main/staAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->this$0:Lcom/zte/heartyservice/main/staAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/main/staAdapter;Lcom/zte/heartyservice/main/staAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;-><init>(Lcom/zte/heartyservice/main/staAdapter;)V

    return-void
.end method
