.class Lcom/tutego/jrtf/RtfPicture$1;
.super Lcom/tutego/jrtf/RtfText;
.source "RtfPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutego/jrtf/RtfPicture;->type(Lcom/tutego/jrtf/RtfPicture$PictureType;)Lcom/tutego/jrtf/RtfText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutego/jrtf/RtfPicture;

.field private final synthetic val$pictureType:Lcom/tutego/jrtf/RtfPicture$PictureType;


# direct methods
.method constructor <init>(Lcom/tutego/jrtf/RtfPicture;Ljava/lang/CharSequence;Lcom/tutego/jrtf/RtfPicture$PictureType;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    iput-object p3, p0, Lcom/tutego/jrtf/RtfPicture$1;->val$pictureType:Lcom/tutego/jrtf/RtfPicture$PictureType;

    .line 201
    invoke-direct {p0, p2}, Lcom/tutego/jrtf/RtfText;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method rtf(Ljava/lang/Appendable;)V
    .locals 18
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v15, "{\\pict"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 208
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->val$pictureType:Lcom/tutego/jrtf/RtfPicture$PictureType;

    sget-object v16, Lcom/tutego/jrtf/RtfPicture$PictureType;->AUTOMATIC:Lcom/tutego/jrtf/RtfPicture$PictureType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, hexChar1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x4

    const/16 v17, 0x6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, hexChar2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x6

    const/16 v17, 0x8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, hexChar3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0xc

    const/16 v17, 0xe

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, hexChar6:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0xe

    const/16 v17, 0x10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 218
    .local v12, hexChar7:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x10

    const/16 v17, 0x12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, hexChar8:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x12

    const/16 v17, 0x14

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, hexChar9:Ljava/lang/String;
    const/16 v15, 0x10

    invoke-static {v8, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v1, v15

    .line 223
    .local v1, char1:C
    const/16 v15, 0x10

    invoke-static {v9, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v2, v15

    .line 224
    .local v2, char2:C
    const/16 v15, 0x10

    invoke-static {v10, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v3, v15

    .line 225
    .local v3, char3:C
    const/16 v15, 0x10

    invoke-static {v11, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v4, v15

    .line 226
    .local v4, char6:C
    const/16 v15, 0x10

    invoke-static {v12, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v5, v15

    .line 227
    .local v5, char7:C
    const/16 v15, 0x10

    invoke-static {v13, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v6, v15

    .line 228
    .local v6, char8:C
    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    int-to-char v7, v15

    .line 230
    .local v7, char9:C
    const/16 v15, 0x4a

    if-ne v4, v15, :cond_4

    const/16 v15, 0x46

    if-ne v5, v15, :cond_4

    const/16 v15, 0x49

    if-ne v6, v15, :cond_4

    const/16 v15, 0x46

    if-ne v7, v15, :cond_4

    .line 231
    sget-object v15, Lcom/tutego/jrtf/RtfPicture$PictureType;->JPG:Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-virtual {v15}, Lcom/tutego/jrtf/RtfPicture$PictureType;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 249
    .end local v1           #char1:C
    .end local v2           #char2:C
    .end local v3           #char3:C
    .end local v4           #char6:C
    .end local v5           #char7:C
    .end local v6           #char8:C
    .end local v7           #char9:C
    .end local v8           #hexChar1:Ljava/lang/String;
    .end local v9           #hexChar2:Ljava/lang/String;
    .end local v10           #hexChar3:Ljava/lang/String;
    .end local v11           #hexChar6:Ljava/lang/String;
    .end local v12           #hexChar7:Ljava/lang/String;
    .end local v13           #hexChar8:Ljava/lang/String;
    .end local v14           #hexChar9:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->widthInTwips:I
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$1(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 250
    const-string v15, "\\picwgoal"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    move-object/from16 v16, v0

    #getter for: Lcom/tutego/jrtf/RtfPicture;->widthInTwips:I
    invoke-static/range {v16 .. v16}, Lcom/tutego/jrtf/RtfPicture;->access$1(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->heightInTwips:I
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$2(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 252
    const-string v15, "\\pichgoal"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    move-object/from16 v16, v0

    #getter for: Lcom/tutego/jrtf/RtfPicture;->heightInTwips:I
    invoke-static/range {v16 .. v16}, Lcom/tutego/jrtf/RtfPicture;->access$2(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->scaleX:I
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$3(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 255
    const-string v15, "\\picscalex"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    move-object/from16 v16, v0

    #getter for: Lcom/tutego/jrtf/RtfPicture;->scaleX:I
    invoke-static/range {v16 .. v16}, Lcom/tutego/jrtf/RtfPicture;->access$3(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 256
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->scaleY:I
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$4(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 257
    const-string v15, "\\picscaley"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    move-object/from16 v16, v0

    #getter for: Lcom/tutego/jrtf/RtfPicture;->scaleY:I
    invoke-static/range {v16 .. v16}, Lcom/tutego/jrtf/RtfPicture;->access$4(Lcom/tutego/jrtf/RtfPicture;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 259
    :cond_3
    const/16 v15, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->this$0:Lcom/tutego/jrtf/RtfPicture;

    #getter for: Lcom/tutego/jrtf/RtfPicture;->hexPicData:Ljava/lang/StringBuilder;
    invoke-static {v15}, Lcom/tutego/jrtf/RtfPicture;->access$0(Lcom/tutego/jrtf/RtfPicture;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 262
    const/16 v15, 0x7d

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 263
    return-void

    .line 232
    .restart local v1       #char1:C
    .restart local v2       #char2:C
    .restart local v3       #char3:C
    .restart local v4       #char6:C
    .restart local v5       #char7:C
    .restart local v6       #char8:C
    .restart local v7       #char9:C
    .restart local v8       #hexChar1:Ljava/lang/String;
    .restart local v9       #hexChar2:Ljava/lang/String;
    .restart local v10       #hexChar3:Ljava/lang/String;
    .restart local v11       #hexChar6:Ljava/lang/String;
    .restart local v12       #hexChar7:Ljava/lang/String;
    .restart local v13       #hexChar8:Ljava/lang/String;
    .restart local v14       #hexChar9:Ljava/lang/String;
    :cond_4
    const/16 v15, 0x50

    if-ne v1, v15, :cond_5

    const/16 v15, 0x4e

    if-ne v2, v15, :cond_5

    const/16 v15, 0x47

    if-ne v3, v15, :cond_5

    .line 233
    sget-object v15, Lcom/tutego/jrtf/RtfPicture$PictureType;->PNG:Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-virtual {v15}, Lcom/tutego/jrtf/RtfPicture$PictureType;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_0

    .line 244
    :cond_5
    new-instance v15, Lcom/tutego/jrtf/RtfException;

    const-string v16, "Unsupported image type"

    invoke-direct/range {v15 .. v16}, Lcom/tutego/jrtf/RtfException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 247
    .end local v1           #char1:C
    .end local v2           #char2:C
    .end local v3           #char3:C
    .end local v4           #char6:C
    .end local v5           #char7:C
    .end local v6           #char8:C
    .end local v7           #char9:C
    .end local v8           #hexChar1:Ljava/lang/String;
    .end local v9           #hexChar2:Ljava/lang/String;
    .end local v10           #hexChar3:Ljava/lang/String;
    .end local v11           #hexChar6:Ljava/lang/String;
    .end local v12           #hexChar7:Ljava/lang/String;
    .end local v13           #hexChar8:Ljava/lang/String;
    .end local v14           #hexChar9:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tutego/jrtf/RtfPicture$1;->val$pictureType:Lcom/tutego/jrtf/RtfPicture$PictureType;

    invoke-virtual {v15}, Lcom/tutego/jrtf/RtfPicture$PictureType;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_0
.end method
