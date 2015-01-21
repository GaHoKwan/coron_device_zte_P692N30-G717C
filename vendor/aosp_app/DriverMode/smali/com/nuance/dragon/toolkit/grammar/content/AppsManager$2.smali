.class final Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/AppsManager$2;->a:Lcom/nuance/dragon/toolkit/grammar/content/AppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
