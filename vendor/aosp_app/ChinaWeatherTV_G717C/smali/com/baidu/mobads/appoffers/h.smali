.class Lcom/baidu/mobads/appoffers/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/e;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/h;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "DF323B150B65FC85264CECF4D28DE44"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BAA8AEE213E7FF7E9B61E72C94F68157"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
