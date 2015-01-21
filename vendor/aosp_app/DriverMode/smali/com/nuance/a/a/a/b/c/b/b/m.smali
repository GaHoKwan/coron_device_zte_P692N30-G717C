.class public Lcom/nuance/a/a/a/b/c/b/b/m;
.super Lcom/nuance/a/a/a/b/c/b/b/g;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/c/b/b/m;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/c/b/b/m;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/a/a/a/b/c/b/b/i;)V
    .locals 4

    const/16 v3, 0xe0

    const/16 v2, 0xc1

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/g;-><init>(S)V

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/m;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/m;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "PDXQueryParameter()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/i;->c()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    const-string v0, "type"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/i;->c()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/nuance/a/a/a/b/c/b/b/m;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PDXQueryParameter() Unknown parameter type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/i;->c()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/i;->c()B

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    const-string v0, "buffer_id"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/b;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/b;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_1
    const-string v0, "text"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/c;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_2
    const-string v0, "data"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/d;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/d;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_3
    const-string v0, "dict"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/e;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/e;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_4
    const-string v0, "dict"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/p;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/p;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    :sswitch_5
    const-string v0, "text"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/r;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :sswitch_6
    const-string v0, "dict"

    check-cast p1, Lcom/nuance/a/a/a/b/c/b/b/q;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/b/b/q;->d()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/a/a/a/b/c/b/b/m;->a(Ljava/lang/String;[BS)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x7f -> :sswitch_6
    .end sparse-switch
.end method
