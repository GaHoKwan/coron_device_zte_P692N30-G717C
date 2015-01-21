.class public abstract Lcom/zte/zdm/mos/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/zte/zdm/mos/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/zte/zdm/mos/a/a/c;)V
    .locals 0

    sput-object p0, Lcom/zte/zdm/mos/a/a/c;->a:Lcom/zte/zdm/mos/a/a/c;

    return-void
.end method

.method public static b()Lcom/zte/zdm/mos/a/a/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/mos/a/a/c;->a:Lcom/zte/zdm/mos/a/a/c;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/zte/zdm/mos/a/a/b;
.end method

.method public abstract a(Ljava/util/Collection;)Ljava/util/List;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/util/List;
.end method
