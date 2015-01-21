.class public Ltmsdkobf/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTime:J

.field public nP:Ljava/lang/String;

.field public nQ:Ljava/lang/String;

.field public nT:D

.field public nU:D

.field public nV:D

.field public nW:D

.field public nX:Ljava/lang/String;

.field public nY:Ljava/lang/String;

.field public nZ:Ljava/lang/String;

.field public oa:Ljava/lang/String;

.field public ob:Ljava/lang/String;

.field public oc:Ljava/lang/String;

.field public od:Ljava/lang/String;

.field public oe:Ljava/lang/String;

.field public of:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/gq;",
            ">;"
        }
    .end annotation
.end field

.field public og:Z

.field public oh:I

.field public oi:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v3, p0, Ltmsdkobf/gr;->nT:D

    .line 20
    iput-wide v3, p0, Ltmsdkobf/gr;->nU:D

    .line 24
    iput-wide v3, p0, Ltmsdkobf/gr;->nV:D

    .line 28
    iput-wide v3, p0, Ltmsdkobf/gr;->nW:D

    .line 34
    iput-object v2, p0, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Ltmsdkobf/gr;->od:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    .line 81
    iput-boolean v5, p0, Ltmsdkobf/gr;->og:Z

    .line 90
    iput v5, p0, Ltmsdkobf/gr;->oh:I

    .line 100
    iput v6, p0, Ltmsdkobf/gr;->oi:I

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltmsdkobf/gr;->mTime:J

    .line 108
    iput-wide v3, p0, Ltmsdkobf/gr;->nW:D

    iput-wide v3, p0, Ltmsdkobf/gr;->nV:D

    iput-wide v3, p0, Ltmsdkobf/gr;->nU:D

    iput-wide v3, p0, Ltmsdkobf/gr;->nT:D

    .line 109
    iput-object v2, p0, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->od:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    .line 111
    iput-boolean v5, p0, Ltmsdkobf/gr;->og:Z

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/gr;->mTime:J

    .line 113
    iput v5, p0, Ltmsdkobf/gr;->oh:I

    .line 114
    iput v6, p0, Ltmsdkobf/gr;->oi:I

    .line 115
    iput-object v2, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method public constructor <init>(Ltmsdkobf/gr;)V
    .locals 5
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v1, p0, Ltmsdkobf/gr;->nT:D

    .line 20
    iput-wide v1, p0, Ltmsdkobf/gr;->nU:D

    .line 24
    iput-wide v1, p0, Ltmsdkobf/gr;->nV:D

    .line 28
    iput-wide v1, p0, Ltmsdkobf/gr;->nW:D

    .line 34
    iput-object v3, p0, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    .line 63
    iput-object v3, p0, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Ltmsdkobf/gr;->od:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    .line 76
    iput-object v3, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    .line 81
    iput-boolean v4, p0, Ltmsdkobf/gr;->og:Z

    .line 90
    iput v4, p0, Ltmsdkobf/gr;->oh:I

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Ltmsdkobf/gr;->oi:I

    .line 102
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ltmsdkobf/gr;->mTime:J

    .line 122
    iget-wide v1, p1, Ltmsdkobf/gr;->nT:D

    iput-wide v1, p0, Ltmsdkobf/gr;->nT:D

    .line 123
    iget-wide v1, p1, Ltmsdkobf/gr;->nU:D

    iput-wide v1, p0, Ltmsdkobf/gr;->nU:D

    .line 124
    iget-wide v1, p1, Ltmsdkobf/gr;->nV:D

    iput-wide v1, p0, Ltmsdkobf/gr;->nV:D

    .line 125
    iget-wide v1, p1, Ltmsdkobf/gr;->nW:D

    iput-wide v1, p0, Ltmsdkobf/gr;->nW:D

    .line 127
    iget-object v1, p1, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    .line 128
    iget-object v1, p1, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    .line 130
    iget-object v1, p1, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    .line 131
    iget-object v1, p1, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    .line 132
    iget-object v1, p1, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    .line 133
    iget-object v1, p1, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    .line 134
    iget-object v1, p1, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    .line 135
    iget-object v1, p1, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    .line 136
    iget-object v1, p1, Ltmsdkobf/gr;->od:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->od:Ljava/lang/String;

    .line 137
    iget-object v1, p1, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    iput-object v1, p0, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    .line 138
    iget-boolean v1, p1, Ltmsdkobf/gr;->og:Z

    iput-boolean v1, p0, Ltmsdkobf/gr;->og:Z

    .line 140
    invoke-virtual {p1}, Ltmsdkobf/gr;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Ltmsdkobf/gr;->mTime:J

    .line 141
    iget v1, p1, Ltmsdkobf/gr;->oh:I

    iput v1, p0, Ltmsdkobf/gr;->oh:I

    .line 142
    iget v1, p1, Ltmsdkobf/gr;->oi:I

    iput v1, p0, Ltmsdkobf/gr;->oi:I

    .line 144
    iput-object v3, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    .line 145
    iget-object v1, p1, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    .line 147
    iget-object v1, p1, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    :cond_0
    return-void

    .line 147
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/gq;

    .line 148
    .local v0, poi:Ltmsdkobf/gq;
    iget-object v2, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public aS(Ljava/lang/String;)V
    .locals 6
    .parameter "addressLine"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 161
    const-string v2, "Unknown"

    iput-object v2, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    iput-object v2, p0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    .line 162
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, Lines:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    array-length v1, v0

    .line 169
    .local v1, lineLength:I
    if-lez v1, :cond_2

    .line 170
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    .line 172
    :cond_2
    if-le v1, v4, :cond_3

    .line 173
    aget-object v2, v0, v4

    iput-object v2, p0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    .line 175
    :cond_3
    if-ne v1, v3, :cond_5

    .line 176
    aget-object v2, v0, v4

    iput-object v2, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    .line 180
    :cond_4
    :goto_1
    if-ne v1, v3, :cond_6

    .line 181
    aget-object v2, v0, v5

    iput-object v2, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_5
    if-le v1, v3, :cond_4

    .line 178
    aget-object v2, v0, v5

    iput-object v2, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    goto :goto_1

    .line 182
    :cond_6
    if-le v1, v3, :cond_0

    .line 183
    aget-object v2, v0, v3

    iput-object v2, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Ltmsdkobf/gr;->mTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    iget v2, p0, Ltmsdkobf/gr;->oi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltmsdkobf/gr;->oh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    iget-boolean v2, p0, Ltmsdkobf/gr;->og:Z

    if-eqz v2, :cond_4

    const-string v2, "Mars"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-wide v2, p0, Ltmsdkobf/gr;->nT:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ltmsdkobf/gr;->nU:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-wide v2, p0, Ltmsdkobf/gr;->nV:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ltmsdkobf/gr;->nW:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v2, p0, Ltmsdkobf/gr;->oi:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 203
    iget-object v2, p0, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget v2, p0, Ltmsdkobf/gr;->oi:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 205
    iget v2, p0, Ltmsdkobf/gr;->oi:I

    if-ne v2, v5, :cond_2

    .line 206
    :cond_1
    iget-object v2, p0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    iget-object v3, p0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    iget-object v3, p0, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    iget-object v3, p0, Ltmsdkobf/gr;->od:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    iget v2, p0, Ltmsdkobf/gr;->oi:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 213
    iget-object v2, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v2, p0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 221
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 199
    :cond_4
    const-string v2, "WGS84"

    goto/16 :goto_0

    .line 214
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/gq;

    .line 215
    .local v0, poi:Ltmsdkobf/gq;
    iget-object v3, v0, Ltmsdkobf/gq;->nP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ltmsdkobf/gq;->nQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 216
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ltmsdkobf/gq;->nR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 217
    iget-wide v4, v0, Ltmsdkobf/gq;->nS:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Ltmsdkobf/gq;->nT:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Ltmsdkobf/gq;->nU:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
