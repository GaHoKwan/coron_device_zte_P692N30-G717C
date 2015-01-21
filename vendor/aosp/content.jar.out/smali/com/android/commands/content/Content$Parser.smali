.class Lcom/android/commands/content/Content$Parser;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_BIND:Ljava/lang/String; = "--bind"

.field private static final ARGUMENT_DELETE:Ljava/lang/String; = "delete"

.field private static final ARGUMENT_INSERT:Ljava/lang/String; = "insert"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_PROJECTION:Ljava/lang/String; = "--projection"

.field private static final ARGUMENT_QUERY:Ljava/lang/String; = "query"

.field private static final ARGUMENT_SORT:Ljava/lang/String; = "--sort"

.field private static final ARGUMENT_UPDATE:Ljava/lang/String; = "update"

.field private static final ARGUMENT_URI:Ljava/lang/String; = "--uri"

.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final ARGUMENT_WHERE:Ljava/lang/String; = "--where"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "d"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "f"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final TYPE_LONG:Ljava/lang/String; = "l"

.field private static final TYPE_STRING:Ljava/lang/String; = "s"


# instance fields
.field private final mTokenizer:Lcom/android/commands/content/Content$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/commands/content/Content$Tokenizer;

    invoke-direct {v0, p1}, Lcom/android/commands/content/Content$Tokenizer;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    .line 131
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "argument"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_1
    return-object v0
.end method

.method private parseBindValue(Landroid/content/ContentValues;)V
    .locals 9
    .parameter "values"

    .prologue
    .line 260
    iget-object v6, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, argument:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding not well formed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 264
    :cond_0
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, firstColonIndex:I
    if-gez v2, :cond_1

    .line 266
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding not well formed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_1
    const-string v6, ":"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 269
    .local v3, secondColonIndex:I
    if-gez v3, :cond_2

    .line 270
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binding not well formed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 272
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, column:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, type:Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, value:Ljava/lang/String;
    const-string v6, "s"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 276
    invoke-virtual {p1, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 277
    :cond_3
    const-string v6, "b"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 278
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 279
    :cond_4
    const-string v6, "i"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "l"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 280
    :cond_5
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 281
    :cond_6
    const-string v6, "f"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "d"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 282
    :cond_7
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 284
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;
    .locals 7

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 183
    .local v2, userId:I
    const/4 v3, 0x0

    .line 184
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 185
    const-string v4, "--uri"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_0
    const-string v4, "--user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 189
    :cond_1
    const-string v4, "--where"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 192
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_3
    if-nez v1, :cond_4

    .line 196
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_4
    new-instance v4, Lcom/android/commands/content/Content$DeleteCommand;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;ILjava/lang/String;)V

    return-object v4
.end method

.method private parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;
    .locals 7

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 157
    .local v2, userId:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v3, values:Landroid/content/ContentValues;
    :goto_0
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 159
    const-string v4, "--uri"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    const-string v4, "--user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 163
    :cond_1
    const-string v4, "--bind"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 166
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_3
    if-nez v1, :cond_4

    .line 170
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 174
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bindings not specified. Did you specify --bind argument(s)?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :cond_5
    new-instance v4, Lcom/android/commands/content/Content$InsertCommand;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V

    return-object v4
.end method

.method private parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;
    .locals 8

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 205
    .local v2, userId:I
    const/4 v4, 0x0

    .line 206
    .local v4, where:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v3, values:Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .local v0, argument:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 208
    const-string v5, "--uri"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 210
    :cond_0
    const-string v5, "--user"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 212
    :cond_1
    const-string v5, "--where"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 214
    :cond_2
    const-string v5, "--bind"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 217
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_4
    if-nez v1, :cond_5

    .line 221
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_5
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 225
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bindings not specified. Did you specify --bind argument(s)?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_6
    new-instance v5, Lcom/android/commands/content/Content$UpdateCommand;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/commands/content/Content$UpdateCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public parseCommand()Lcom/android/commands/content/Content$Command;
    .locals 5

    .prologue
    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, operation:Ljava/lang/String;
    const-string v2, "insert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;

    move-result-object v2

    .line 150
    .end local v1           #operation:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 138
    .restart local v1       #operation:Ljava/lang/String;
    :cond_0
    const-string v2, "delete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;

    move-result-object v2

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;

    move-result-object v2

    goto :goto_0

    .line 142
    :cond_2
    const-string v2, "query"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/android/commands/content/Content$Parser;->parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;

    move-result-object v2

    goto :goto_0

    .line 145
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #operation:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 148
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "usage: adb shell content [subcommand] [options]\n\nusage: adb shell content insert --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...]\n  <URI> a content provider URI.\n  <BINDING> binds a typed value to a column and is formatted:\n  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:\n  <TYPE> specifies data type such as:\n  b - boolean, s - string, i - integer, l - long, f - float, d - double\n  Note: Omit the value for passing an empty string, e.g column:s:\n  Example:\n  # Add \"new_setting\" secure setting with value \"new_value\".\n  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value\n\nusage: adb shell content update --uri <URI> [--user <USER_ID>] [--where <WHERE>]\n  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).\n  Example:\n  # Change \"new_setting\" secure setting to \"newer_value\".\n  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where \"name=\\\'new_setting\\\'\"\n\nusage: adb shell content delete --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>]\n  Example:\n  # Remove \"new_setting\" secure setting.\n  adb shell content delete --uri content://settings/secure --where \"name=\\\'new_setting\\\'\"\n\nusage: adb shell content query --uri <URI> [--user <USER_ID>] [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>]\n  <PROJECTION> is a list of colon separated column names and is formatted:\n  <COLUMN_NAME>[:<COLUMN_NAME>...]\n  <SORT_OREDER> is the order in which rows in the result should be sorted.\n  Example:\n  # Select \"name\" and \"value\" columns from secure settings where \"name\" is equal to \"new_setting\" and sort the result by name in ascending order.\n  adb shell content query --uri content://settings/secure --projection name:value --where \"name=\\\'new_setting\\\'\" --sort \"name ASC\"\n\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;
    .locals 9

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 234
    .local v2, userId:I
    const/4 v3, 0x0

    .line 235
    .local v3, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 236
    .local v5, sort:Ljava/lang/String;
    const/4 v4, 0x0

    .line 237
    .local v4, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #calls: Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/commands/content/Content$Tokenizer;->access$000(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v6

    .local v6, argument:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 238
    const-string v0, "--uri"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 240
    :cond_0
    const-string v0, "--user"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 242
    :cond_1
    const-string v0, "--where"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 244
    :cond_2
    const-string v0, "--sort"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 246
    :cond_3
    const-string v0, "--projection"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "[\\s]*:[\\s]*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 249
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_5
    if-nez v1, :cond_6

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_6
    new-instance v0, Lcom/android/commands/content/Content$QueryCommand;

    invoke-direct/range {v0 .. v5}, Lcom/android/commands/content/Content$QueryCommand;-><init>(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
