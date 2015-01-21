.class Lcom/zte/backup/format/db/tb_item;
.super Ljava/lang/Object;
.source "OkbDBInterface.java"


# instance fields
.field tb_key:Ljava/lang/String;

.field tb_key_type:Ljava/lang/String;

.field tb_primary:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "key"
    .parameter "key_type"
    .parameter "primary"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/zte/backup/format/db/tb_item;->tb_key:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/zte/backup/format/db/tb_item;->tb_key_type:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/zte/backup/format/db/tb_item;->tb_primary:Ljava/lang/Integer;

    .line 113
    return-void
.end method
