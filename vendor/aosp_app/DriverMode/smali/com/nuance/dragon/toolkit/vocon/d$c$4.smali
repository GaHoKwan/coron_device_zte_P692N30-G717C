.class final Lcom/nuance/dragon/toolkit/vocon/d$c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

.field final synthetic i:Lcom/nuance/dragon/toolkit/vocon/d$c;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ZLjava/util/Map;IZLcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->c:Ljava/util/List;

    iput-boolean p5, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->d:Z

    iput-object p6, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->e:Ljava/util/Map;

    iput p7, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->f:I

    iput-boolean p8, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->g:Z

    iput-object p9, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->h:Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;J)J

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b()I

    move-result v7

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unable to set recognizer parameters."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->d:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    :goto_2
    if-ge v2, v4, :cond_2

    const-string v4, "default"

    if-lez v2, :cond_8

    const-string v4, "seamless"

    move-object v6, v4

    move v4, v5

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v9, v9, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v9}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v9

    invoke-interface {v9, v6, v4}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    invoke-direct {v4, v6}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->e:Ljava/util/Map;

    invoke-virtual {v4, v9}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->setParams(Ljava/util/Map;)V

    iget-object v9, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v4

    invoke-interface {v4, v6, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v0, "Unable to add WuW phrase in context."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    const-string v0, "Unable to create WuW context."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v0

    mul-int/lit8 v2, v7, 0x2

    iget v3, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->f:I

    iget-boolean v4, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->g:Z

    new-instance v5, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;

    invoke-direct {v5, p0, v7}, Lcom/nuance/dragon/toolkit/vocon/d$c$4$1;-><init>(Lcom/nuance/dragon/toolkit/vocon/d$c$4;I)V

    invoke-interface/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->a(Ljava/util/List;IIZLcom/nuance/dragon/toolkit/vocon/NativeVocon$RecognitionListener;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Unable to start recognizer."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/vocon/d$c;->a(Lcom/nuance/dragon/toolkit/vocon/d$c;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/vocon/VoconContext;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/vocon/d$c$4;->i:Lcom/nuance/dragon/toolkit/vocon/d$c;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/vocon/d$c;->a:Lcom/nuance/dragon/toolkit/vocon/d;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/vocon/d;->a(Lcom/nuance/dragon/toolkit/vocon/d;)Lcom/nuance/dragon/toolkit/vocon/NativeVocon;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocon/VoconContext;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/dragon/toolkit/vocon/NativeVocon;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v6, v4

    move v4, v3

    goto/16 :goto_3
.end method
