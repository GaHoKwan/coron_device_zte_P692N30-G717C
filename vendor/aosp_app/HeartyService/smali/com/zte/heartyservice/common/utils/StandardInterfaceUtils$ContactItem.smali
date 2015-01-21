.class public Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;
.super Ljava/lang/Object;
.source "StandardInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 5383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5380
    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;->number:Ljava/lang/String;

    .line 5381
    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;->name:Ljava/lang/String;

    .line 5384
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;->number:Ljava/lang/String;

    .line 5385
    iput-object p2, p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;->name:Ljava/lang/String;

    .line 5386
    return-void
.end method
