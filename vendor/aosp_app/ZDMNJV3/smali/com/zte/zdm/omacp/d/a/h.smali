.class Lcom/zte/zdm/omacp/d/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/omacp/d/c;


# static fields
.field private static final a:Ljava/lang/String; = "WapProvisioningDocImpl"


# instance fields
.field private b:Lcom/zte/zdm/omacp/d/a/j;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/omacp/d/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/zdm/omacp/d/a/j;-><init>(Lcom/zte/zdm/omacp/d/a/h;Lcom/zte/zdm/omacp/d/a/i;)V

    iput-object v0, p0, Lcom/zte/zdm/omacp/d/a/h;->b:Lcom/zte/zdm/omacp/d/a/j;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/zte/zdm/omacp/d/a/h;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/h;-><init>()V

    new-instance v1, Lcom/zte/zdm/omacp/d/a/b;

    sget-object v2, Lcom/zte/zdm/omacp/d/a/k;->a:Lcom/zte/zdm/omacp/d/a/k;

    invoke-virtual {v2}, Lcom/zte/zdm/omacp/d/a/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/zdm/omacp/d/a/b;-><init>(Ljava/lang/String;)V

    const-string v2, "APPID"

    const-string v3, "w2"

    invoke-virtual {v1, v2, v3}, Lcom/zte/zdm/omacp/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/omacp/d/a/b;

    sget-object v3, Lcom/zte/zdm/omacp/d/a/k;->a:Lcom/zte/zdm/omacp/d/a/k;

    invoke-virtual {v3}, Lcom/zte/zdm/omacp/d/a/k;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/zdm/omacp/d/a/b;-><init>(Ljava/lang/String;)V

    const-string v3, "APPID"

    const-string v4, "w4"

    invoke-virtual {v2, v3, v4}, Lcom/zte/zdm/omacp/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zte/zdm/omacp/d/a/h;->a(Lcom/zte/zdm/omacp/d/a;)V

    invoke-virtual {v0, v2}, Lcom/zte/zdm/omacp/d/a/h;->a(Lcom/zte/zdm/omacp/d/a;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/h;->b:Lcom/zte/zdm/omacp/d/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/omacp/d/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/omacp/d/a;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/zte/zdm/omacp/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/omacp/d/a/k;->a(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a/k;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/zte/zdm/omacp/d/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zte/zdm/omacp/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not exsit "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/zdm/omacp/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/h;->b:Lcom/zte/zdm/omacp/d/a/j;

    invoke-virtual {v2, v1, v0, p1}, Lcom/zte/zdm/omacp/d/a/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/omacp/d/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, "WapProvisioningDocImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtDomainValues type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/h;->b:Lcom/zte/zdm/omacp/d/a/j;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/d/a/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "WapProvisioningDocImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extDomainValueset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "<wap-provisioningdoc>\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/h;->b:Lcom/zte/zdm/omacp/d/a/j;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/d/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<wap-provisioningdoc/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
