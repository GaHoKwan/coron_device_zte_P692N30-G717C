.class public Lcom/nuance/a/a/a/a/d/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/a/d/e;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Escaping XML reserved tokens (&, <, >, \" and \') of: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-string v2, "amp;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_4
    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Final output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->a(Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method public static a(Lcom/nuance/a/a/a/a/a/a$a;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v0

    sget-object v1, Lcom/nuance/a/a/a/a/a/a$a;->M:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/a/a/a/a/a/a$a;->O:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/a/a/a/a/a/a$a;->N:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/nuance/a/a/a/a/a/a$a;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v0

    sget-object v1, Lcom/nuance/a/a/a/a/a/a$a;->P:Lcom/nuance/a/a/a/a/a/a$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/nuance/a/a/a/a/a/a$a;)Lcom/nuance/a/a/a/a/a/a$a;
    .locals 4

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->N:Lcom/nuance/a/a/a/a/a/a$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->O:Lcom/nuance/a/a/a/a/a/a$a;

    if-ne p0, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->M:Lcom/nuance/a/a/a/a/a/a$a;

    :goto_0
    sget-object v1, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nuance/a/a/a/a/d/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adjustCodecForBluetooth() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/a/a$a;->a()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->R:Lcom/nuance/a/a/a/a/a/a$a;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->S:Lcom/nuance/a/a/a/a/a/a$a;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->U:Lcom/nuance/a/a/a/a/a/a$a;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->T:Lcom/nuance/a/a/a/a/a/a$a;

    if-ne p0, v0, :cond_4

    :cond_3
    sget-object v0, Lcom/nuance/a/a/a/a/a/a$a;->Q:Lcom/nuance/a/a/a/a/a/a$a;

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method
