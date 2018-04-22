/******************************************************************************
 *                                                                            *
 * Tris Foundation disclaims copyright to this source code.                   *
 * In place of a legal notice, here is a blessing:                            *
 *                                                                            *
 *     May you do good and not evil.                                          *
 *     May you find forgiveness for yourself and forgive others.              *
 *     May you share freely, never taking more than you give.                 *
 *                                                                            *
 ******************************************************************************/

import Test
@testable import Compression

class BlockTypeTests: TestCase {
    func testBlockType() {
        assertEqual(try BlockType(0), .noCompression)
        assertEqual(try BlockType(1), .fixedHuffman)
        assertEqual(try BlockType(2), .dynamicHuffman)
        assertThrowsError(try BlockType(3))
    }
}
