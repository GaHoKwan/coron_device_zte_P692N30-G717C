.class public abstract Lcom/tutego/jrtf/RtfPara;
.super Ljava/lang/Object;
.source "RtfPara.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs p([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 1
    .parameter "texts"

    .prologue
    .line 89
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfPara$1;

    invoke-direct {v0}, Lcom/tutego/jrtf/RtfPara$1;-><init>()V

    .line 96
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tutego/jrtf/RtfPara$2;

    invoke-direct {v0, p0}, Lcom/tutego/jrtf/RtfPara$2;-><init>([Lcom/tutego/jrtf/RtfText;)V

    goto :goto_0
.end method

.method public static varargs p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 3
    .parameter "texts"

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tutego/jrtf/RtfText;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tutego/jrtf/RtfText;->text([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfText;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tutego/jrtf/RtfPara;->p([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    return-object v0
.end method

.method public static varargs pard([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;
    .locals 1
    .parameter "texts"

    .prologue
    .line 119
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfPara$3;

    invoke-direct {v0}, Lcom/tutego/jrtf/RtfPara$3;-><init>()V

    .line 126
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tutego/jrtf/RtfPara$4;

    invoke-direct {v0, p0}, Lcom/tutego/jrtf/RtfPara$4;-><init>([Lcom/tutego/jrtf/RtfText;)V

    goto :goto_0
.end method

.method public static varargs row([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfRow;
    .locals 2
    .parameter "cells"

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Lcom/tutego/jrtf/RtfException;

    const-string v1, "There has to be at least one cell in a row"

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    new-instance v0, Lcom/tutego/jrtf/RtfPara$6;

    invoke-direct {v0, p0}, Lcom/tutego/jrtf/RtfPara$6;-><init>([Lcom/tutego/jrtf/RtfPara;)V

    return-object v0
.end method

.method public static varargs row([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfRow;
    .locals 7
    .parameter "cells"

    .prologue
    const/4 v4, 0x0

    .line 174
    if-nez p0, :cond_0

    .line 175
    new-instance v3, Lcom/tutego/jrtf/RtfException;

    const-string v4, "There has to be at least one cell in a row"

    invoke-direct {v3, v4}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, paras:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Lcom/tutego/jrtf/RtfPara;

    .line 182
    .local v2, parasArray:[Lcom/tutego/jrtf/RtfPara;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/tutego/jrtf/RtfPara;

    invoke-static {v3}, Lcom/tutego/jrtf/RtfPara;->row([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfRow;

    move-result-object v3

    return-object v3

    .line 178
    .end local v2           #parasArray:[Lcom/tutego/jrtf/RtfPara;
    :cond_1
    aget-object v0, p0, v3

    .line 179
    .local v0, cell:Lcom/tutego/jrtf/RtfText;
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/tutego/jrtf/RtfText;

    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/tutego/jrtf/RtfPara;->p([Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs row([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfRow;
    .locals 7
    .parameter "cells"

    .prologue
    const/4 v4, 0x0

    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v3, Lcom/tutego/jrtf/RtfException;

    const-string v4, "There has to be at least one cell in a row"

    invoke-direct {v3, v4}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, paras:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Lcom/tutego/jrtf/RtfPara;

    .line 207
    .local v2, parasArray:[Lcom/tutego/jrtf/RtfPara;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/tutego/jrtf/RtfPara;

    invoke-static {v3}, Lcom/tutego/jrtf/RtfPara;->row([Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfRow;

    move-result-object v3

    return-object v3

    .line 198
    .end local v2           #parasArray:[Lcom/tutego/jrtf/RtfPara;
    :cond_1
    aget-object v0, p0, v3

    .line 200
    .local v0, cell:Ljava/lang/Object;
    instance-of v6, v0, Lcom/tutego/jrtf/RtfPara;

    if-eqz v6, :cond_2

    .line 201
    check-cast v0, Lcom/tutego/jrtf/RtfPara;

    .end local v0           #cell:Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .restart local v0       #cell:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/tutego/jrtf/RtfPara;->p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static ul(Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfPara;
    .locals 2
    .parameter "text"

    .prologue
    .line 156
    const-string v0, "{\\pard{\\pntext\\bullet\\tab}{\\*\\pn\\pnlvlblt\\pnf1\\pnindent0{\\pntxtb\\bullet}}\\fi-200\\li200 "

    .line 158
    .local v0, s:Ljava/lang/String;
    new-instance v1, Lcom/tutego/jrtf/RtfPara$5;

    invoke-direct {v1, p0}, Lcom/tutego/jrtf/RtfPara$5;-><init>(Lcom/tutego/jrtf/RtfText;)V

    return-object v1
.end method

.method public static ul(Ljava/lang/String;)Lcom/tutego/jrtf/RtfPara;
    .locals 1
    .parameter "text"

    .prologue
    .line 146
    new-instance v0, Lcom/tutego/jrtf/RtfText;

    invoke-direct {v0, p0}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/tutego/jrtf/RtfPara;->ul(Lcom/tutego/jrtf/RtfText;)Lcom/tutego/jrtf/RtfPara;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract rtf(Ljava/lang/Appendable;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
