//
//  UICollectionView+Extension.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 21/1/24.
//

import UIKit

extension UICollectionView {

    // Registro de celdas
    final func register<T: UICollectionViewCell & ReusableCell>(cellType: T.Type) {
        register(cellType.self, forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }

    // Recuperación de celdas reutilizables
    final func dequeueReusableCell<T: UICollectionViewCell & ReusableCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Failed to dequeue reusable cell with identifier '\(T.reuseIdentifier)'. Did you forget to register the cell first?")
        }
        return cell
    }

    // Registro de vistas de encabezado/pie de página
    final func register<T: UICollectionReusableView & ReusableCell>(supplementaryViewType: T.Type, forSupplementaryViewOfKind kind: String) {
        register(supplementaryViewType.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: supplementaryViewType.reuseIdentifier)
    }

    // Recuperación de vistas de encabezado/pie de página reutilizables
    final func dequeueReusableSupplementaryView<T: UICollectionReusableView & ReusableCell>(ofKind kind: String, for indexPath: IndexPath) -> T {
        guard let view = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Failed to dequeue reusable supplementary view with identifier '\(T.reuseIdentifier)'. Did you forget to register the view first?")
        }
        return view
    }
}
