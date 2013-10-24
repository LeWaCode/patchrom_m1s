.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/btobex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    }
.end annotation


# static fields
.field private static CALLLOG_NUM_LIMIT:I

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field public static ORDER_BY_ALPHABETICAL:I

.field public static ORDER_BY_INDEXED:I

.field private static final PBAP_TARGET:[B

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mMissedCallSize:I

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 77
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "/telecom/ich"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/telecom/och"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/telecom/mch"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/SIM1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/SIM1/telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/SIM1/telecom/ich"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/SIM1/telecom/och"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/SIM1/telecom/mch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/SIM1/telecom/cch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/SIM1/telecom/pb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 155
    const/16 v0, 0x32

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 157
    sput v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    .line 159
    sput v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    .line 161
    sput-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    return-void

    .line 71
    :array_0
    .array-data 0x1
        0x79t
        0x61t
        0x35t
        0xf0t
        0xf0t
        0xc5t
        0x11t
        0xd8t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "callback"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Ljavax/btobex/ServerRequestHandler;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 142
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 153
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 179
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 180
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 181
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 186
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .parameter "out"
    .parameter "op"

    .prologue
    .line 1035
    const/4 v1, 0x1

    .line 1037
    .local v1, returnvalue:Z
    if-eqz p0, :cond_0

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1046
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1052
    :cond_1
    :goto_1
    return v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v1, 0x0

    goto :goto_0

    .line 1048
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1049
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I
    .locals 14
    .parameter "maxListCount"
    .parameter "listStartOffset"
    .parameter "searchValue"
    .parameter "result"
    .parameter "type"
    .parameter "SIM"

    .prologue
    .line 635
    const/4 v4, 0x0

    .line 636
    .local v4, itemsFound:I
    const/4 v6, 0x0

    .line 638
    .local v6, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_1

    .line 639
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 643
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v12, p1, :cond_2

    move v9, p1

    .line 644
    .local v9, requestSize:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 645
    .local v5, listSize:I
    const-string v1, ""

    .line 651
    .local v1, compareValue:Ljava/lang/String;
    const-string v12, "number"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 652
    const/4 v7, 0x0

    .line 654
    .local v7, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_3

    .line 655
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 659
    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_5

    .line 660
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 662
    move/from16 v8, p2

    .line 663
    .local v8, pos:I
    :goto_4
    if-ge v8, v5, :cond_4

    if-ge v4, v9, :cond_4

    .line 664
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 666
    .local v2, currentValue:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 667
    add-int/lit8 v4, v4, 0x1

    .line 668
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<card handle=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".vcf\" name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 641
    .end local v1           #compareValue:Ljava/lang/String;
    .end local v2           #currentValue:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #listSize:I
    .end local v7           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #pos:I
    .end local v9           #requestSize:I
    :cond_1
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v12, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_1

    .line 657
    .restart local v1       #compareValue:Ljava/lang/String;
    .restart local v5       #listSize:I
    .restart local v7       #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #requestSize:I
    :cond_3
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_2

    .line 672
    .restart local v3       #i:I
    .restart local v8       #pos:I
    :cond_4
    if-lt v4, v9, :cond_6

    .line 705
    .end local v3           #i:I
    .end local v7           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #pos:I
    :cond_5
    return v4

    .line 659
    .restart local v3       #i:I
    .restart local v7       #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #pos:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 677
    .end local v3           #i:I
    .end local v7           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #pos:I
    :cond_7
    if-eqz p3, :cond_8

    .line 678
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 681
    :cond_8
    move/from16 v8, p2

    .line 682
    .restart local v8       #pos:I
    :goto_5
    if-ge v8, v5, :cond_5

    if-ge v4, v9, :cond_5

    .line 683
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 684
    .restart local v2       #currentValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 686
    .local v11, tmpCurrentValue:Ljava/lang/String;
    if-nez p3, :cond_9

    .line 687
    add-int/lit8 v4, v4, 0x1

    .line 688
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<card handle=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".vcf\" name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 691
    :cond_9
    const/4 v10, -0x1

    .line 693
    .local v10, sIndex:I
    :cond_a
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 694
    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 695
    add-int/lit8 v4, v4, 0x1

    .line 696
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<card handle=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".vcf\" name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 700
    :cond_b
    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 701
    if-gtz v10, :cond_a

    goto :goto_6
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, selection:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1076
    :goto_0
    return-object v0

    .line 1064
    :pswitch_0
    const-string v0, "type=1"

    .line 1065
    goto :goto_0

    .line 1067
    :pswitch_1
    const-string v0, "type=2"

    .line 1068
    goto :goto_0

    .line 1070
    :pswitch_2
    const-string v0, "type=3"

    .line 1071
    goto :goto_0

    .line 1062
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/btobex/HeaderSet;Ljavax/btobex/Operation;)I
    .locals 11
    .parameter "appParamValue"
    .parameter "size"
    .parameter "reply"
    .parameter "op"

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 761
    new-array v2, v7, [B

    .line 762
    .local v2, misnum:[B
    new-instance v0, Ljavax/btobex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/btobex/ApplicationParameter;-><init>()V

    .line 766
    .local v0, ap:Ljavax/btobex/ApplicationParameter;
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    if-eqz v6, :cond_2

    .line 768
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 770
    new-array v4, v8, [B

    .line 772
    .local v4, pbsize:[B
    div-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 773
    rem-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 774
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v8, v4}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 777
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v6, :cond_0

    .line 778
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 779
    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v6

    .line 780
    .local v3, nmnum:I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 782
    if-lez v3, :cond_1

    .line 783
    :goto_0
    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 784
    invoke-virtual {v0, v9, v7, v2}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 789
    .end local v3           #nmnum:I
    :cond_0
    invoke-virtual {v0}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 793
    invoke-direct {p0, p4, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I

    move-result v5

    .line 823
    .end local v4           #pbsize:[B
    :goto_1
    return v5

    .restart local v3       #nmnum:I
    .restart local v4       #pbsize:[B
    :cond_1
    move v3, v5

    .line 782
    goto :goto_0

    .line 799
    .end local v3           #nmnum:I
    .end local v4           #pbsize:[B
    :cond_2
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v6, :cond_3

    .line 801
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 803
    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v6

    .line 804
    .restart local v3       #nmnum:I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 806
    if-lez v3, :cond_4

    .line 807
    :goto_2
    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 808
    invoke-virtual {v0, v9, v7, v2}, Ljavax/btobex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 810
    invoke-virtual {v0}, Ljavax/btobex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 817
    :try_start_0
    invoke-interface {p4, p3}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v3           #nmnum:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .restart local v3       #nmnum:I
    :cond_4
    move v3, v5

    .line 806
    goto :goto_2

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/16 v5, 0xd0

    goto :goto_1
.end method

.method private final isLegalPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 437
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 11
    .parameter "appParam"
    .parameter "appParamValue"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 492
    const/4 v1, 0x0

    .line 493
    .local v1, i:I
    const/4 v5, 0x1

    .line 494
    .local v5, parseOk:Z
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_6

    if-ne v5, v10, :cond_6

    .line 495
    aget-byte v6, p1, v1

    packed-switch v6, :pswitch_data_0

    .line 560
    const/4 v5, 0x0

    .line 561
    const-string v6, "BluetoothPbapObexServer"

    const-string v7, "Parse Application Parameter error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :pswitch_0
    add-int/lit8 v1, v1, 0x2

    .line 498
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    .line 500
    add-int v6, v1, v2

    aget-byte v6, p1, v6

    if-eqz v6, :cond_0

    .line 501
    iput-boolean v9, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    .line 502
    iget-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    add-int v7, v1, v2

    aget-byte v7, p1, v7

    aput-byte v7, v6, v2

    .line 499
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    :cond_1
    add-int/lit8 v1, v1, 0x8

    .line 506
    goto :goto_0

    .line 508
    .end local v2           #index:I
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 509
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 510
    add-int/lit8 v1, v1, 0x1

    .line 511
    goto :goto_0

    .line 513
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 515
    aget-byte v3, p1, v1

    .line 516
    .local v3, length:I
    if-nez v3, :cond_2

    .line 518
    const/4 v5, 0x0

    .line 519
    goto :goto_0

    .line 521
    :cond_2
    add-int v6, v1, v3

    aget-byte v6, p1, v6

    if-nez v6, :cond_3

    .line 522
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v3, -0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 526
    :goto_2
    add-int/2addr v1, v3

    .line 527
    add-int/lit8 v1, v1, 0x1

    .line 528
    goto :goto_0

    .line 524
    :cond_3
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, p1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_2

    .line 530
    .end local v3           #length:I
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 531
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 532
    add-int/lit8 v1, v1, 0x1

    .line 533
    goto :goto_0

    .line 535
    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    .line 536
    aget-byte v6, p1, v1

    if-nez v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    if-nez v6, :cond_4

    .line 537
    iput-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 543
    :goto_3
    add-int/lit8 v1, v1, 0x2

    .line 544
    goto/16 :goto_0

    .line 539
    :cond_4
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 540
    .local v0, highValue:I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 541
    .local v4, lowValue:I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_3

    .line 546
    .end local v0           #highValue:I
    .end local v4           #lowValue:I
    :pswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 547
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 548
    .restart local v0       #highValue:I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 549
    .restart local v4       #lowValue:I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 550
    add-int/lit8 v1, v1, 0x2

    .line 551
    goto/16 :goto_0

    .line 553
    .end local v0           #highValue:I
    .end local v4           #lowValue:I
    :pswitch_6
    add-int/lit8 v1, v1, 0x2

    .line 554
    aget-byte v6, p1, v1

    if-eqz v6, :cond_5

    .line 555
    iput-boolean v9, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 557
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 558
    goto/16 :goto_0

    .line 568
    :cond_6
    return v5

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/btobex/HeaderSet;Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 27
    .parameter "appParam"
    .parameter "appParamValue"
    .parameter "reply"
    .parameter "op"
    .parameter "name"

    .prologue
    .line 956
    if-eqz p5, :cond_1

    .line 957
    const-string v5, "."

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 958
    .local v22, dotIndex:I
    const-string v26, "vcf"

    .line 959
    .local v26, vcf:Ljava/lang/String;
    if-ltz v22, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v22

    if-gt v0, v5, :cond_1

    .line 960
    add-int/lit8 v5, v22, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 961
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "name is not .vcf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/16 v23, 0xc6

    .line 1029
    .end local v22           #dotIndex:I
    .end local v26           #vcf:Ljava/lang/String;
    :cond_0
    :goto_0
    return v23

    .line 967
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v24

    .line 968
    .local v24, pbSize:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/btobex/HeaderSet;Ljavax/btobex/Operation;)I

    move-result v23

    .line 969
    .local v23, needSendBody:I
    const/4 v5, -0x1

    move/from16 v0, v23

    if-ne v0, v5, :cond_0

    .line 973
    if-nez v24, :cond_2

    .line 975
    const/16 v23, 0xa0

    goto :goto_0

    .line 978
    :cond_2
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v0, v24

    if-lt v0, v5, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v25, v0

    .line 980
    .local v25, requestSize:I
    :goto_1
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 981
    .local v13, startPoint:I
    if-ltz v13, :cond_3

    move/from16 v0, v24

    if-lt v13, v0, :cond_5

    .line 982
    :cond_3
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listStartOffset is not correct! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/16 v23, 0xa0

    goto :goto_0

    .end local v13           #startPoint:I
    .end local v25           #requestSize:I
    :cond_4
    move/from16 v25, v24

    .line 978
    goto :goto_1

    .line 987
    .restart local v13       #startPoint:I
    .restart local v25       #requestSize:I
    :cond_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6

    .line 989
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    move/from16 v0, v25

    if-le v0, v5, :cond_6

    .line 990
    sget v25, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 994
    :cond_6
    add-int v5, v13, v25

    add-int/lit8 v8, v5, -0x1

    .line 995
    .local v8, endPoint:I
    add-int/lit8 v5, v24, -0x1

    if-le v8, v5, :cond_7

    .line 996
    add-int/lit8 v8, v24, -0x1

    .line 1001
    :cond_7
    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 1002
    .local v9, vcard21:Z
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 1003
    if-nez v13, :cond_9

    .line 1004
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z)Ljava/lang/String;

    move-result-object v10

    .line 1005
    .local v10, ownerVcard:Ljava/lang/String;
    if-nez v8, :cond_8

    .line 1006
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v23

    goto/16 :goto_0

    .line 1008
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/btobex/Operation;IIZLjava/lang/String;Z[B)I

    move-result v23

    goto/16 :goto_0

    .line 1012
    .end local v10           #ownerVcard:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/16 v16, 0x0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v18, v0

    move-object/from16 v12, p4

    move v14, v8

    move v15, v9

    invoke-virtual/range {v11 .. v18}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/btobex/Operation;IIZLjava/lang/String;Z[B)I

    move-result v23

    goto/16 :goto_0

    .line 1015
    :cond_a
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_d

    .line 1016
    if-nez v13, :cond_c

    .line 1017
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z)Ljava/lang/String;

    move-result-object v10

    .line 1018
    .restart local v10       #ownerVcard:Ljava/lang/String;
    if-nez v8, :cond_b

    .line 1019
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v23

    goto/16 :goto_0

    .line 1021
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v7, 0x1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookVcards(Ljavax/btobex/Operation;IIZLjava/lang/String;)I

    move-result v23

    goto/16 :goto_0

    .line 1025
    .end local v10           #ownerVcard:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move v14, v8

    move v15, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookVcards(Ljavax/btobex/Operation;IIZLjava/lang/String;)I

    move-result v23

    goto/16 :goto_0

    .line 1029
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    add-int/lit8 v17, v13, 0x1

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v21, v0

    move-object/from16 v16, p4

    move/from16 v19, v9

    invoke-virtual/range {v14 .. v21}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/btobex/Operation;IIZZ[B)I

    move-result v23

    goto/16 :goto_0
.end method

.method private final pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/btobex/Operation;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .parameter "appParam"
    .parameter "appParamValue"
    .parameter "op"
    .parameter "name"
    .parameter "current_path"

    .prologue
    .line 889
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 891
    :cond_0
    const/16 v2, 0xc6

    .line 950
    :goto_0
    return v2

    .line 893
    :cond_1
    const/4 v2, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 894
    .local v17, strIndex:Ljava/lang/String;
    const/4 v4, 0x0

    .line 895
    .local v4, intIndex:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 897
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 904
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v16

    .line 905
    .local v16, size:I
    if-nez v16, :cond_3

    .line 907
    const/16 v2, 0xc4

    goto :goto_0

    .line 898
    .end local v16           #size:I
    :catch_0
    move-exception v14

    .line 899
    .local v14, e:Ljava/lang/NumberFormatException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch number format exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/16 v2, 0xc6

    goto :goto_0

    .line 910
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v16       #size:I
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 911
    .local v5, vcard21:Z
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-nez v2, :cond_4

    .line 912
    const-string v2, "BluetoothPbapObexServer"

    const-string v3, "wrong path!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/16 v2, 0xc6

    goto :goto_0

    .line 914
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 915
    if-ltz v4, :cond_5

    move/from16 v0, v16

    if-lt v4, v0, :cond_6

    .line 916
    :cond_5
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 918
    :cond_6
    if-nez v4, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z)Ljava/lang/String;

    move-result-object v15

    .line 921
    .local v15, ownerVcard:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 923
    .end local v15           #ownerVcard:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/btobex/Operation;IZLjava/lang/String;IZ[B)I

    move-result v2

    goto/16 :goto_0

    .line 926
    :cond_8
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    .line 927
    if-ltz v4, :cond_9

    move/from16 v0, v16

    if-lt v4, v0, :cond_a

    .line 928
    :cond_9
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/16 v2, 0xa0

    goto/16 :goto_0

    .line 930
    :cond_a
    if-nez v4, :cond_b

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z)Ljava/lang/String;

    move-result-object v15

    .line 933
    .restart local v15       #ownerVcard:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 935
    .end local v15           #ownerVcard:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookOneVcard(Ljavax/btobex/Operation;IZLjava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    .line 939
    :cond_c
    if-lez v4, :cond_d

    move/from16 v0, v16

    if-le v4, v0, :cond_e

    .line 940
    :cond_d
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 945
    :cond_e
    const/4 v2, 0x1

    if-lt v4, v2, :cond_f

    .line 946
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:[B

    move-object/from16 v8, p3

    move v9, v4

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/btobex/Operation;IIZZ[B)I

    move-result v2

    goto/16 :goto_0

    .line 950
    :cond_f
    const/16 v2, 0xa0

    goto/16 :goto_0
.end method

.method private final pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/btobex/HeaderSet;Ljavax/btobex/Operation;)I
    .locals 15
    .parameter "appParam"
    .parameter "appParamValue"
    .parameter "reply"
    .parameter "op"

    .prologue
    .line 828
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 830
    .local v12, searchAttr:Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 832
    :cond_0
    const-string v3, "0"

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 846
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 847
    .local v14, size:I
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v14, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/btobex/HeaderSet;Ljavax/btobex/Operation;)I

    move-result v10

    .line 848
    .local v10, needSendBody:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_4

    .line 884
    .end local v10           #needSendBody:I
    .end local v14           #size:I
    :goto_1
    return v10

    .line 834
    :cond_1
    const-string v3, "0"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 835
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "search attr not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v3, "2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "do not support search by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/16 v10, 0xd1

    goto :goto_1

    .line 841
    :cond_2
    const/16 v10, 0xcc

    goto :goto_1

    .line 843
    :cond_3
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAttr is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    .restart local v10       #needSendBody:I
    .restart local v14       #size:I
    :cond_4
    if-nez v14, :cond_5

    .line 854
    const/16 v10, 0xa0

    goto :goto_1

    .line 857
    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 858
    .local v11, orderPara:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 860
    const-string v11, "0"

    .line 875
    :goto_2
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 876
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 881
    :cond_6
    :goto_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(ILjavax/btobex/Operation;IILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, sendResult:I
    move v10, v13

    .line 884
    goto/16 :goto_1

    .line 863
    .end local v13           #sendResult:I
    :cond_7
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 865
    const-string v3, "2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 867
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Do not support order by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/16 v10, 0xd1

    goto/16 :goto_1

    .line 870
    :cond_8
    const/16 v10, 0xcc

    goto/16 :goto_1

    .line 872
    :cond_9
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Order parameter is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 877
    :cond_a
    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 878
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto :goto_3
.end method

.method private final pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I
    .locals 6
    .parameter "op"
    .parameter "vcardString"

    .prologue
    .line 736
    if-nez p2, :cond_1

    .line 737
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "vcardString is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v2, 0xa0

    .line 756
    :cond_0
    :goto_0
    return v2

    .line 741
    :cond_1
    const/4 v1, 0x0

    .line 742
    .local v1, outputStream:Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 744
    .local v2, pushResult:I
    :try_start_0
    invoke-interface {p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 745
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_1
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 753
    const/16 v2, 0xd0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open/write outputstrem failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/16 v2, 0xd0

    goto :goto_1
.end method

.method private final pushHeader(Ljavax/btobex/Operation;Ljavax/btobex/HeaderSet;)I
    .locals 5
    .parameter "op"
    .parameter "reply"

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 718
    .local v1, outputStream:Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 720
    .local v2, pushResult:I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V

    .line 721
    invoke-interface {p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 728
    :goto_0
    const/16 v2, 0xd0

    .line 731
    :cond_0
    return v2

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    const/16 v2, 0xd0

    .line 727
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 728
    const/16 v2, 0xd0

    .line 727
    :cond_1
    throw v3
.end method

.method private final sendVcardListingXml(ILjavax/btobex/Operation;IILjava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "type"
    .parameter "op"
    .parameter "maxListCount"
    .parameter "listStartOffset"
    .parameter "searchValue"
    .parameter "searchAttr"

    .prologue
    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 577
    .local v9, itemsFound:I
    const/4 v7, 0x0

    .line 578
    .local v7, SIM:Z
    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 584
    const-string v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    const-string v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    .line 626
    :cond_0
    :goto_0
    const-string v1, "</vCard-listing>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    .line 587
    :cond_1
    const-string v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    const-string v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 592
    :cond_2
    const/16 v1, 0xcc

    goto :goto_1

    .line 595
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 596
    const/4 v7, 0x1

    .line 597
    const-string v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 598
    const-string v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 600
    :cond_4
    const-string v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 601
    const-string v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 605
    :cond_5
    const/16 v1, 0xcc

    goto :goto_1

    .line 610
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 611
    .local v11, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v1, v0, :cond_8

    move/from16 v12, p3

    .line 612
    .local v12, requestSize:I
    :goto_2
    move/from16 v13, p4

    .line 613
    .local v13, startPoint:I
    add-int v8, v13, v12

    .line 614
    .local v8, endPoint:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v8, v1, :cond_7

    .line 615
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 619
    :cond_7
    move v10, v13

    .local v10, j:I
    :goto_3
    if-ge v10, v8, :cond_0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<card handle=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".vcf\" name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    add-int/lit8 v9, v9, 0x1

    .line 619
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 611
    .end local v8           #endPoint:I
    .end local v10           #j:I
    .end local v12           #requestSize:I
    .end local v13           #startPoint:I
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_2
.end method


# virtual methods
.method public onAbort(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 252
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 253
    const/16 v0, 0xa0

    return v0
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 1058
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 314
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 11
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v8, 0xd0

    const/16 v10, 0x10

    const/16 v7, 0xc6

    .line 192
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 193
    .local v5, uuid:[B
    if-nez v5, :cond_0

    move v6, v7

    .line 232
    .end local v5           #uuid:[B
    :goto_0
    return v6

    .line 198
    .restart local v5       #uuid:[B
    :cond_0
    array-length v6, v5

    if-eq v6, v10, :cond_1

    .line 199
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_3

    .line 203
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 204
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 205
    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 216
    .local v4, remote:[B
    if-eqz v4, :cond_4

    .line 218
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 229
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 230
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 232
    const/16 v6, 0xa0

    goto :goto_0

    .line 209
    .end local v2           #i:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #remote:[B
    .end local v5           #uuid:[B
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 211
    goto :goto_0

    .line 220
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v5       #uuid:[B
    :catch_1
    move-exception v1

    .line 221
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 222
    goto :goto_0
.end method

.method public onDisconnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)V
    .locals 2
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 240
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/btobex/HeaderSet;->responseCode:I

    .line 241
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 244
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/btobex/Operation;)I
    .locals 17
    .parameter "op"

    .prologue
    .line 318
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 319
    const/4 v14, 0x0

    .line 320
    .local v14, request:Ljavax/btobex/HeaderSet;
    new-instance v10, Ljavax/btobex/HeaderSet;

    invoke-direct {v10}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 321
    .local v10, reply:Ljavax/btobex/HeaderSet;
    const-string v15, ""

    .line 322
    .local v15, type:Ljava/lang/String;
    const-string v6, ""

    .line 323
    .local v6, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 324
    .local v3, appParam:[B
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 326
    .local v4, appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v14

    .line 327
    const/16 v2, 0x42

    invoke-virtual {v14, v2}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 328
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 329
    const/16 v2, 0x4c

    invoke-virtual {v14, v2}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    if-nez v15, :cond_0

    .line 339
    const/16 v2, 0xc6

    .line 427
    :goto_0
    return v2

    .line 330
    :catch_0
    move-exception v13

    .line 331
    .local v13, e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "request headers error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v2, 0xd0

    goto :goto_0

    .line 349
    .end local v13           #e:Ljava/io/IOException;
    :cond_0
    const/16 v16, 0x1

    .line 350
    .local v16, validName:Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const/16 v16, 0x0

    .line 354
    :cond_1
    if-eqz v16, :cond_2

    if-eqz v16, :cond_d

    const-string v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 358
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 410
    :goto_1
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 411
    const/16 v2, 0xc0

    goto :goto_0

    .line 360
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 361
    :cond_4
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 362
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 363
    :cond_6
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 364
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 365
    :cond_8
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 366
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto :goto_1

    .line 367
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 368
    :cond_a
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 369
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 370
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 372
    :cond_c
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "mCurrentpath is not valid path!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 380
    :cond_d
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "SIM1"

    const/4 v5, 0x0

    const-string v7, "SIM1"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "x-bt/phonebook"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 386
    :cond_f
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 388
    :cond_10
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 389
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 391
    :cond_11
    const-string v2, "ich"

    const/4 v5, 0x0

    const-string v7, "ich"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 392
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 394
    :cond_12
    const-string v2, "och"

    const/4 v5, 0x0

    const-string v7, "och"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 395
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 397
    :cond_13
    const-string v2, "mch"

    const/4 v5, 0x0

    const-string v7, "mch"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 398
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 399
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto/16 :goto_1

    .line 401
    :cond_14
    const-string v2, "cch"

    const/4 v5, 0x0

    const-string v7, "cch"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 402
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 405
    :cond_15
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "Input name doesn\'t contain valid info!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 415
    :cond_16
    const-string v2, "x-bt/vcard-listing"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v10, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/btobex/HeaderSet;Ljavax/btobex/Operation;)I

    move-result v2

    goto/16 :goto_0

    .line 419
    :cond_17
    const-string v2, "x-bt/vcard"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 420
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/btobex/Operation;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 423
    :cond_18
    const-string v2, "x-bt/phonebook"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v11, p1

    move-object v12, v6

    .line 424
    invoke-direct/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/btobex/HeaderSet;Ljavax/btobex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 426
    :cond_19
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "unknown type request!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v2, 0xc6

    goto/16 :goto_0
.end method

.method public onPut(Ljavax/btobex/Operation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 259
    const/16 v0, 0xc0

    return v0
.end method

.method public onSetPath(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;ZZ)I
    .locals 6
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 269
    .local v1, current_path_tmp:Ljava/lang/String;
    const/4 v3, 0x0

    .line 271
    .local v3, tmp_path:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    if-eqz p3, :cond_1

    .line 279
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 292
    if-eqz p4, :cond_3

    .line 293
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path create is forbidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v4, 0xc3

    .line 303
    :goto_1
    return v4

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "Get name header fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v4, 0xd0

    goto :goto_1

    .line 284
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    if-nez v3, :cond_2

    .line 285
    const-string v1, ""

    goto :goto_0

    .line 287
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_3
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path is not legal"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v4, 0xc4

    goto :goto_1

    .line 300
    :cond_4
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 303
    const/16 v4, 0xa0

    goto :goto_1
.end method
